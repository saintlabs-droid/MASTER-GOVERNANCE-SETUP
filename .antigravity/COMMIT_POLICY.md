# Commit Policy

This project strictly follows the **Conventional Commits** specification.

## 1. Atomic Commits

Every commit must represent a **single, coherent, logical unit of change**. Do not group unrelated changes (e.g., don't mix `feat` and `refactor`).

## 2. Commit Message Format

```
<type>(<scope>): <subject>

<body — explains WHY, not WHAT. Wrap at 72 chars.>

<footer — Closes #issue, BREAKING CHANGE: description>
```

### Allowed Types

- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation changes
- `style`: Formatting, whitespace (no logic change)
- `refactor`: Code restructuring without behavior change
- `perf`: Performance improvement
- `test`: Adding or updating tests
- `chore`: Tooling, build process, dependencies
- `ci`: CI/CD pipeline changes
- `revert`: Reverts a previous commit

### Subject Rules

- Use **imperative mood** (`add`, `fix`, `update`)
- No capital first letter
- No period at the end
- Maximum **72 characters**

## 3. Enforcement

- Use the `.gitmessage` template: `git config commit.template .gitmessage`
- Pre-commit hooks validate message format.
- Body is **required** for `feat`, `fix`, and `refactor` commits.
