## Publishing Workflow

### Branch Structure

- **develop** — Working branch with full structure (`skills/`, `docs/`, `scripts/`, `.github/`)
- **main** — Published branch with flat structure (skills at root + `.github/` for workflows)

### Before Publishing

1. Ensure you're on the `develop` branch
2. Test the skill in Claude Code
3. Commit all changes to develop

### Publishing Command

```bash
./scripts/publish-skills.sh "commit message"
```

This script copies to main:
- `skills/*` → root level (flat)
- `.github/` → `.github/` (workflows must exist on main for tag triggers)

### Creating a Release

After publishing to main, create a version tag to trigger the GitHub Actions release workflow:

```bash
git checkout main
git tag v1.x.x
git push origin v1.x.x
git checkout develop
```

The workflow creates downloadable zip files for each skill.

### Troubleshooting

**Workflow not triggering on tag push:**
- Ensure `.github/workflows/release.yml` exists on main branch
- Run publish script to sync workflows: `./scripts/publish-skills.sh "sync workflows"`
