# Folder Structure Blueprint

This project follows the structure defined in `docs/FOLDER_STRUCTURE.md`.

## 1. Root Organization

- `.github/`: CI/CD workflows and templates.
- `.githooks/`: Shared local git hooks.
- `docs/`: Documentation and ADRs.
- `src/`: Application source code.
- `tests/`: Test suites (unit, integration, e2e).
- `scripts/`: Build and deploy scripts.
- `config/`: Environment-specific configuration.

## 2. Design Principles

- **Feature Grouping**: Group by domain/feature, not just by file type.
- **Nesting Depth**: Maximum 3 levels below `src/`.
- **Root Cleanliness**: No source files in the root directory.

## 3. Naming Conventions

- JS Modules: `camelCase`
- TS Components: `PascalCase`
- Python: `snake_case`
- Config: `kebab-case`
- Documentation: `UPPER_SNAKE_CASE`
