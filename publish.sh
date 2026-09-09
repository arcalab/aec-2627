#!/usr/bin/env bash
set -euo pipefail

MAIN_BRANCH="main"
PUBLISH_BRANCH="publish"
FILE_LIST="publish-files.txt"
TMP_DIR="$(mktemp -d)"
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

# 1. Read the list of files/folders to publish, skipping blank lines and comments
if [[ ! -f "$FILE_LIST" ]]; then
  echo "Error: $FILE_LIST not found." >&2
  exit 1
fi

FILES=()
line=""
while IFS= read -r line || [[ -n "$line" ]]; do
  line="$(echo "$line" | xargs)"   # trim whitespace
  [[ -z "$line" || "$line" == \#* ]] && continue
  line="${line%/}"                 # strip a trailing slash, e.g. "figures/" -> "figures"
  FILES+=("$line")
done < "$FILE_LIST"

if [[ ${#FILES[@]} -eq 0 ]]; then
  echo "Error: no files listed in $FILE_LIST." >&2
  exit 1
fi

# 2. Copy the listed files/folders out before switching branches
for f in "${FILES[@]}"; do
  if [[ ! -e "$f" ]]; then
    echo "Error: '$f' listed in $FILE_LIST but not found." >&2
    exit 1
  fi
  mkdir -p "$TMP_DIR/$(dirname "$f")"
  cp -r "$f" "$TMP_DIR/$f"
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

# 5. Bring the files/folders in and stage them
for f in "${FILES[@]}"; do
  mkdir -p "$(dirname "$f")"
  cp -r "$TMP_DIR/$f" "$f"
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
