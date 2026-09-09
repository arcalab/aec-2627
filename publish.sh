#!/usr/bin/env bash
set -euo pipefail

MAIN_BRANCH="main"
PUBLISH_BRANCH="publish"
FILES=("main.pdf")          # add more filenames here if needed
TMP_DIR="$(mktemp -d)"
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

# 1. (Optional) compile here if you want the script to build too
# latexmk -pdf -interaction=nonstopmode main.tex

# 2. Copy the built files somewhere outside the repo before switching branches
#    (they're likely gitignored on main, so `git checkout` can't grab them there)
for f in "${FILES[@]}"; do
  cp "$f" "$TMP_DIR/"
done

# 3. Push main normally
git push origin "$MAIN_BRANCH"

# 4. Switch to the publish branch, creating it as an orphan the first time
if git show-ref --verify --quiet "refs/heads/$PUBLISH_BRANCH"; then
  git checkout "$PUBLISH_BRANCH"
else
  git checkout --orphan "$PUBLISH_BRANCH"
  git rm -rf . >/dev/null 2>&1 || true
fi

# 5. Bring the built files in and stage them
for f in "${FILES[@]}"; do
  cp "$TMP_DIR/$f" .
done
git add "${FILES[@]}"

# 6. Commit — amend if a commit already exists here, otherwise create one
if git rev-parse --verify HEAD >/dev/null 2>&1; then
  git commit --amend -m "Publish $(date -u +%Y-%m-%dT%H:%M:%SZ)"
else
  git commit -m "Publish $(date -u +%Y-%m-%dT%H:%M:%SZ)"
fi

# 7. Force-push the single-commit branch
git push origin "$PUBLISH_BRANCH" --force

# 8. Return to wherever you were
git checkout "$CURRENT_BRANCH"
rm -rf "$TMP_DIR"
