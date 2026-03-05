# Pull Request Policy

All code contributions must pass through a Pull Request (PR) on GitHub.

## 1. Focused PRs

- One feature or fix per PR.
- Keep PRs under **400 lines changed**.
- Use Draft PRs for early feedback (`[WIP]`).

## 2. PR Requirements

- **Title**: Follow Conventional Commit format.
- **Template**: Complete `.github/pull_request_template.md`.
- **References**: Link to issues (`Closes #123`).
- **CI**: All checks must pass.

## 3. Review Process

- Minimum **1 approving review** required.
- Address all review comments before merging.
- **Merge Strategy**: Use **Squash and Merge** or **Rebase and Merge**. Merge commits are discouraged on `main`.

## 4. Branching Base

- Branch from `develop` for features/fixes.
- Branch from `main` ONLY for critical `hotfix/`.
- Delete branches immediately after merging.
