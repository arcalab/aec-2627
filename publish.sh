#!/usr/bin/env bash
set -euo pipefail

MAIN_BRANCH="main"
PUBLISH_BRANCH="publish"
FILES=("main.pdf")          # add more filenames here if needed
TMP_DIR="$(mktemp -d)"
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

# 1. Read the list of files to publish, skipping blank lines and comments
if [[ ! -f "$FILE_LIST" ]]; then
  echo "Error: $FILE_LIST not found." >&2
  exit 1
fi

FILES=()
while IFS= read -r line || [[ -n "$line" ]]; do
  line="$(echo "$line" | xargs)"   # trim whitespace
  [[ -z "$line" || "$line" == \#* ]] && continue
  FILES+=("$line")
done < "$FILE_LIST"

if [[ ${#FILES[@]} -eq 0 ]]; then
  echo "Error: no files listed in $FILE_LIST." >&2
  exit 1
fi

# 2. Copy the listed files out before switching branches
for f in "${FILES[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "Error: '$f' listed in $FILE_LIST but not found." >&2
    exit 1
  fi
  mkdir -p "$TMP_DIR/$(dirname "$f")"
  cp "$f" "$TMP_DIR/$f"
done

# 3. Switch to the publish branch, creating it as an orphan the first time
if git show-ref --verify --quiet "refs/heads/$PUBLISH_BRANCH"; then
  git checkout "$PUBLISH_BRANCH"
else
  git checkout --orphan "$PUBLISH_BRANCH"
  git rm -rf . >/dev/null 2>&1 || true
fi

# 4. Bring the built files in and stage them
for f in "${FILES[@]}"; do
  cp "$TMP_DIR/$f" .
done
git add "${FILES[@]}"

# 5. Commit — amend if a commit already exists here, otherwise create one
if git rev-parse --verify HEAD >/dev/null 2>&1; then
  git commit --amend -m "Publish $(date -u +%Y-%m-%dT%H:%M:%SZ)"
else
  git commit -m "Publish $(date -u +%Y-%m-%dT%H:%M:%SZ)"
fi

# 6. Force-push the single-commit branch
git push origin "$PUBLISH_BRANCH" --force

# 7. Return to wherever you were
git checkout "$CURRENT_BRANCH"
rm -rf "$TMP_DIR"
