# Contributing to This Project

Thank you for taking the time to contribute! This guide describes how to work with this repository efficiently and in alignment with our governance standards.

> Before contributing, please read `.antigravity-rules.md` for the full governance rules.

---

## Table of Contents

1. [Getting Started](#getting-started)
2. [Branching Rules](#branching-rules)
3. [Commit Rules](#commit-rules)
4. [Pull Request Process](#pull-request-process)
5. [Code Style Rules](#code-style-rules)
6. [Testing Requirements](#testing-requirements)
7. [Documentation](#documentation)
8. [Reporting Issues](#reporting-issues)

---

## Getting Started

```bash
# 1. Fork the repository on GitHub

# 2. Clone your fork
git clone https://github.com/<your-username>/PROJECT_NAME.git
cd PROJECT_NAME

# 3. Add the upstream remote
git remote add upstream https://github.com/saintlabs-droid/PROJECT_NAME.git

# 4. Install dependencies
npm install   # or: pip install -r requirements.txt

# 5. Set up the commit template
git config commit.template .gitmessage

# 6. Install git hooks
cp .githooks/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```

---

## Branching Rules

Always branch from the correct base:

| Work Type          | Branch From  | Branch Prefix     | Example                        |
|--------------------|--------------|-------------------|--------------------------------|
| New feature        | `develop`    | `feature/`        | `feature/user-authentication`  |
| Bug fix            | `develop`    | `fix/`            | `fix/login-redirect-loop`      |
| Documentation      | `develop`    | `docs/`           | `docs/update-api-reference`    |
| Refactor           | `develop`    | `refactor/`       | `refactor/auth-middleware`     |
| Tooling / config   | `develop`    | `chore/`          | `chore/upgrade-node-18`        |
| Critical hotfix    | `main`       | `hotfix/`         | `hotfix/security-token-leak`   |
| Release preparation| `develop`    | `release/`        | `release/v1.2.0`               |

### Rules
- Use **kebab-case** in branch names
- Include an issue number when applicable: `feature/42-user-authentication`
- Keep branches **short-lived** — merge within the scope of a single task
- Delete your branch after it has been merged

```bash
# Sync with upstream before starting work
git fetch upstream
git checkout develop
git merge upstream/develop

# Create your branch
git checkout -b feature/your-feature-name
```

---

## Commit Rules

This project follows the **[Conventional Commits](https://conventionalcommits.org/)** specification.

### Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

| Type       | Use for                                              |
|------------|------------------------------------------------------|
| `feat`     | New user-facing feature                              |
| `fix`      | Bug fix                                              |
| `docs`     | Documentation only                                   |
| `style`    | Formatting (no logic change)                         |
| `refactor` | Code restructuring (no feature/fix)                  |
| `perf`     | Performance improvement                              |
| `test`     | Adding or correcting tests                           |
| `chore`    | Tooling, build, dependency changes                   |
| `ci`       | CI/CD pipeline changes                               |
| `revert`   | Revert a previous commit                             |

### Rules
- ✅ One commit per logical change
- ✅ Use imperative mood: `add`, `fix`, `update` — not `added`, `fixed`, `updated`
- ✅ Subject line ≤ 72 characters
- ✅ No period at end of subject line
- ✅ Body explains **why**, not what

```bash
# ✅ Good
git commit -m "feat(auth): add JWT token refresh endpoint"

# ✅ Good with body
git commit -m "fix(api): handle null response from external payment service

The payment gateway returns null instead of an error object when the
request times out. This caused an unhandled exception in the checkout
flow. Added null guard and fallback error message.

Closes #88"

# ❌ Bad
git commit -m "fix stuff and update readme"
git commit -m "WIP"
git commit -m "."
```

---

## Pull Request Process

1. **Keep PRs focused** — one feature or fix per PR
2. **Fill out the PR template** completely (`.github/pull_request_template.md`)
3. **Reference relevant issues**: `Closes #123`
4. **Ensure CI passes** before requesting review
5. **Assign at least one reviewer**
6. **Address all review comments** before merging

### PR Title Format
```
<type>(<scope>): <short description>

# Examples:
feat(auth): implement OAuth 2.0 login flow
fix(dashboard): correct chart data aggregation for weekly view
chore(deps): upgrade react from 18.2 to 18.3
```

### Review Expectations
- Reviewers must check: correctness, test coverage, documentation, and code style
- All comments must be resolved before merge
- Minimum **1 approving review** required
- Use **squash merge** or **rebase merge** — no merge commits on `main`

---

## Code Style Rules

- Follow the conventions defined in [`docs/STANDARDS.md`](docs/STANDARDS.md)
- All public functions and classes must have docstrings
- Comments explain **why**, not **what**
- Maximum line length: **100 characters**
- No commented-out dead code in commits

### Linting & Formatting
```bash
# JavaScript / TypeScript
npm run lint
npm run format

# Python
flake8 src/
black src/
```

---

## Testing Requirements

- Every `feat` commit must be accompanied by tests in a separate `test` commit
- Every `fix` commit must include a regression test
- Tests must be named descriptively:

```
✅ "should return 401 when JWT token is expired"
✅ "should redirect to /dashboard after successful login"
❌ "test login"
❌ "auth test"
```

```bash
# Run all tests
npm test
# or
pytest

# Run with coverage
npm run test:coverage
# or
pytest --cov=src
```

---

## Documentation

- Update `README.md` when adding or changing features
- Add docstrings to all new public functions and classes
- Significant architectural decisions must be recorded as `docs/ADR-<N>-<title>.md`

---

## Reporting Issues

- Use the appropriate issue template:
  - 🐛 [Bug Report](.github/ISSUE_TEMPLATE/bug_report.md)
  - 🚀 [Feature Request](.github/ISSUE_TEMPLATE/feature_request.md)
- Search existing issues before opening a new one
- Provide as much context as possible

---

*Thank you for helping maintain the quality and integrity of this project!*
*— [saintlabs-droid](https://github.com/saintlabs-droid)*
