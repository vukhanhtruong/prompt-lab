#!/bin/bash
# Publish skills/ contents to main branch
# Usage: ./scripts/publish-skills.sh [commit message]

set -e

MSG="${1:-Update skills from develop}"
CURRENT_BRANCH=$(git branch --show-current)

if [ "$CURRENT_BRANCH" != "develop" ]; then
  echo "Error: Must be on develop branch"
  exit 1
fi

# Backup skills/
cp -r skills /tmp/skills-publish

# Switch to main, update contents
git checkout main
rm -rf prompt-eval prompt-gen LICENSE README.md
cp -r /tmp/skills-publish/* .

# Commit and push
git add -A
if git diff --cached --quiet; then
  echo "No changes to publish"
else
  git commit -m "$MSG"
  git push origin main
  echo "Published to main"
fi

# Cleanup and return
rm -rf /tmp/skills-publish
git checkout develop
