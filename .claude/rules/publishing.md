## Publishing Workflow

### Branch Structure

- **develop** — Working branch with full structure (`skills/`, `docs/`, `scripts/`)
- **main** — Published branch with flat structure (skills at root level)

### Before Publishing

1. Ensure you're on the `develop` branch
2. Test the skill in Claude Code
3. Commit all changes to develop

### Publishing Command

```bash
./scripts/publish-skills.sh "commit message"
```

This script:
1. Copies `skills/*` to main branch root
2. Removes the `skills/` nesting
3. Commits and pushes to main

### Creating a Release

After publishing to main, create a version tag to trigger the GitHub Actions release workflow:

```bash
git checkout main
git tag v1.0.1
git push origin v1.0.1
git checkout develop
```

The workflow creates downloadable zip files for each skill.
