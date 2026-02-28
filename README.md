# Master Governance Setup

> A complete, reusable GitHub governance and workflow structure designed to enforce high-quality contributions, strict commit discipline, and standardized documentation across projects.

---

## Overview

This repository provides a foundational governance framework for software engineering projects. When applied to a new or existing repository, it establishes clear guardrails for how code is written, reviewed, and merged. 

By enforcing the **[Conventional Commits](https://conventionalcommits.org/)** specification and providing robust templates for pull requests and issues, this framework ensures that the development lifecycle remains predictable, scalable, and fully documented.

---

## Governance Framework Components

This setup includes several key configuration files and templates. Below is a breakdown of what each file contains and its purpose in the governance lifecycle.

### 1. Git Configuration & Hooks

| File | Description |
|------|-------------|
| **`.gitmessage`** | The Conventional Commit message template. When configured (`git config commit.template .gitmessage`), it provides inline guidance in your editor for writing standardized commit messages (`feat`, `fix`, `chore`, etc.). |
| **`.githooks/pre-commit`** | A shell-based git hook that intercepts commits to validate the message format against the Conventional Commits specification. It rejects non-compliant messages and ensures the subject line does not exceed 72 characters. |

### 2. Core Rules & Standards

| File | Description |
|------|-------------|
| **`.antigravity-rules.md`** | The master governance document. It strictly defines commit discipline (one logical change per commit), the branching strategy (`main`, `develop`, `feature/*`), PR approval standards, and rules for refactoring and testing. |
| **`docs/STANDARDS.md`** | Technical documentation and code standards. This covers markdown structure rules, README formatting, docstring conventions (JSDoc/Python), code comment policies (explain *why*, not *what*), and general code style expectations. |
| **`docs/FOLDER_STRUCTURE.md`** | An annotated blueprint detailing the recommended repository layout, including stack-specific examples (Node.js, Python, React) and naming conventions. |

### 3. GitHub Integrations

| File | Description |
|------|-------------|
| **`.github/pull_request_template.md`** | The default template applied when creating a new Pull Request. It requires authors to define the type of change, motivation, testing proof, and complete a pre-merge checklist. |
| **`.github/ISSUE_TEMPLATE/feature_request.md`** | Structured template for proposing new features. Includes sections for problem motivation, proposed solution, and acceptance criteria. |
| **`.github/ISSUE_TEMPLATE/bug_report.md`** | Structured template for reporting bugs. Requires minimum reproducible steps, expected vs. actual behaviour, environment specifics, and logs/screenshots. |

### 4. Project Documentation

| File | Description |
|------|-------------|
| **`README.md`** | This current document. Serves as the landing page explaining the repository's purpose and its layout. |
| **`CONTRIBUTING.md`** | The complete developer onboarding guide. It provides step-by-step instructions on branching, committing, opening PRs, running tests, and reporting issues in accordance with the project's governance model. |

---

## Getting Started: Applying to a New Project

To apply this governance framework to a new repository, copy the files from this directory to the root of your new project and run the following setup commands:

```bash
# 1. Initialize git (if not already done)
git init

# 2. Configure the commit message template
git config commit.template .gitmessage

# 3. Install the pre-commit hook to strictly enforce commit formats
cp .githooks/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```

Once installed, all contributors must follow the rules outlined in `.antigravity-rules.md` and `CONTRIBUTING.md`.

---

*Maintained by [saintlabs-droid](https://github.com/saintlabs-droid)*
