# Governance Rules

All development in this repository must adhere to the high-level standards defined in `.antigravity-rules.md`.

## Core Disciplines

- **Commit Discipline**: One logical change per commit using Conventional Commits.
- **Branching Strategy**: Use flow-based branching (`feature/`, `fix/`, `chore/` off `develop`).
- **Pull Request Standards**: Every PR must follow the template and undergo review.
- **Documentation Rules**: Keep README and docs updated; use proper docstrings.
- **Testing Expectations**: Every feature and fix must include tests.
- **Refactor Rules**: Refactors must not change behavior and must be separate from features.
- **Security First**: Never commit secrets; use environment variables.

Detailed policies are available in:

- [COMMIT_POLICY.md](./COMMIT_POLICY.md)
- [PR_POLICY.md](./PR_POLICY.md)
- [CODING_STANDARDS.md](./CODING_STANDARDS.md)
- [FOLDER_STRUCTURE.md](./FOLDER_STRUCTURE.md)
