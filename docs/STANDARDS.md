# Documentation & Code Standards

> This document defines the quality and formatting standards for all project documentation and code across repositories governed by the Antigravity framework.

---

## 1. Markdown Structure Rules

### 1.1 Heading Hierarchy
- Use **one `#` H1** per document — the document title only
- Use `##` for major sections
- Use `###` for subsections
- Never skip heading levels (e.g., `##` directly to `####`)

### 1.2 Formatting Rules
- Use **bold** for key terms and UI labels
- Use *italics* for emphasis or technical terminology at first use
- Use `inline code` for file paths, commands, variables, and code tokens
- Use fenced code blocks with explicit language identifiers — never use plain code fences

```bash
# ✅ Always specify language
```python
def hello(): ...
```

# ❌ Never use anonymous fences
```
code here
```
```

### 1.3 Lists
- Use unordered lists (`-`) for non-sequential items
- Use ordered lists (`1.`) for steps or priority sequences
- Indent nested lists with 2 spaces
- Keep list items grammatically parallel

### 1.4 Tables
- Use tables for comparative or multi-column data
- Always include a header row
- Align columns consistently using padding

### 1.5 Links
- Use descriptive link text — never `click here` or `read more`
- Use reference-style links for repeated URLs

```markdown
✅ [Contributing Guidelines](./CONTRIBUTING.md)
❌ [click here](./CONTRIBUTING.md)
```

---

## 2. README Format Standard

Every repository must have a `README.md` that follows this structure **in order**:

| Section                  | Required | Notes                                      |
|--------------------------|----------|--------------------------------------------|
| Project title + badges   | Yes      | Status badges, license, coverage           |
| Overview                 | Yes      | 2–4 sentence project summary               |
| Features                 | Yes      | Bulleted key capabilities                  |
| Tech Stack               | Yes      | Technologies used                          |
| Installation             | Yes      | Prerequisites + step-by-step commands      |
| Usage                    | Yes      | Example commands or screenshots            |
| Environment Variables    | Yes      | Table of all env vars with descriptions    |
| Testing                  | Yes      | How to run tests                           |
| Deployment               | Yes      | Step-by-step production deployment         |
| Contributing             | Yes      | Link to `CONTRIBUTING.md`                  |
| License                  | Yes      | License declaration                        |

---

## 3. Docstring Rules

### 3.1 Python — Google Style
```python
def calculate_score(attempts: int, correct: int) -> float:
    """Calculate accuracy score as a percentage.

    Args:
        attempts: Total number of attempts made.
        correct: Number of correct answers.

    Returns:
        A float representing the accuracy percentage (0.0 to 100.0).

    Raises:
        ValueError: If attempts is zero or negative.
    """
```

### 3.2 JavaScript / TypeScript — JSDoc
```javascript
/**
 * Calculates the accuracy score as a percentage.
 *
 * @param {number} attempts - Total number of attempts made.
 * @param {number} correct - Number of correct answers.
 * @returns {number} Accuracy percentage between 0 and 100.
 * @throws {Error} If attempts is zero or negative.
 */
function calculateScore(attempts, correct) { ... }
```

### 3.3 Rules for All Languages
- Every public function, class, and module **must** have a docstring
- Private/internal helpers require a one-line doc minimum
- Include `@param`, `@returns`, and `@throws` / `Raises` for all functions
- Keep docstrings under **80 characters per line**

---

## 4. Code Comment Policy

### 4.1 What to Comment
- **Why** a decision was made, not **what** the code does
- Workarounds for known bugs (include issue link)
- Non-obvious algorithmic logic
- TODOs with assignee and issue reference

```python
# TODO(saintlabs-droid): Replace with async handler once #42 is resolved
# Using linear search here — dataset is always < 10 items so O(n²) is fine
```

### 4.2 What NOT to Comment
```python
# ❌ Increment counter by 1
counter += 1

# ❌ Return the value
return result
```

### 4.3 Comment Format
- Start with a capital letter
- No trailing period required on single-line comments
- Multi-line comments use full sentences with periods

---

## 5. Folder Structure Guidance

See [`FOLDER_STRUCTURE.md`](./FOLDER_STRUCTURE.md) for the full annotated blueprint.

### 5.1 General Principles
- Group by **feature or domain**, not by file type
- Keep configuration files at the repository root
- Place all tests adjacent to the code they test, or in a top-level `tests/` directory
- Do not nest more than **3 levels** deep without a strong reason

### 5.2 Standard Top-Level Directories

| Directory     | Purpose                                      |
|---------------|----------------------------------------------|
| `src/`        | Application source code                      |
| `tests/`      | Test suites (unit, integration, e2e)         |
| `docs/`       | Project documentation                        |
| `.github/`    | GitHub templates, workflows, actions         |
| `scripts/`    | Build, deploy, and utility scripts           |
| `config/`     | Environment and tool configuration           |
| `public/`     | Static assets (web projects)                 |

---

*All contributors must adhere to these standards. Issues or exceptions must be discussed in a PR and recorded in `docs/`.*
