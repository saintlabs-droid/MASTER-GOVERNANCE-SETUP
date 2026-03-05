# Coding and Documentation Standards

Derived from `docs/STANDARDS.md`.

## 1. Documentation Standards

- **Markdown**: Use proper heading hierarchy (one H1, no skipped levels).
- **README**: Maintain consistent structure (Overview, Features, Tech Stack, etc.).
- **Docstrings**:
  - Required for all public functions, classes, and modules.
  - Python: Google Style.
  - JavaScript/TypeScript: JSDoc.
- **Comments**: Explain **WHY**, not WHAT.

## 2. Code Quality

- **Line Length**: Maximum 100 characters.
- **Dead Code**: No commented-out code in commits.
- **Consistency**: Follow `docs/STANDARDS.md` for specific language patterns.

## 3. Testing Requirements

- Every `feat` must have tests (in a separate `test` commit).
- Every `fix` must have a regression test.
- Test names should describe the scenario: `"should return 401 when JWT token is expired"`.
- Aim for high coverage as enforced by CI thresholds.
