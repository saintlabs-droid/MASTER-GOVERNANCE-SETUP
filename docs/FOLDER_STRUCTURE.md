# Recommended Folder Structure Blueprint

> This document defines the standard folder structure for repositories governed by the Antigravity framework. Adapt as needed for your technology stack while maintaining the core organisation principles.

---

## Universal Repository Root

```
project-root/
│
├── .github/                        # GitHub-specific configuration
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md           # Bug report template
│   │   └── feature_request.md      # Feature request template
│   ├── workflows/                  # GitHub Actions CI/CD pipelines
│   │   ├── ci.yml                  # Continuous integration
│   │   ├── cd.yml                  # Continuous deployment
│   │   └── codeql.yml              # Security analysis
│   └── pull_request_template.md    # PR description template
│
├── .githooks/                      # Local git hooks (checked into repo)
│   └── pre-commit                  # Conventional commit validator
│
├── docs/                           # Project documentation
│   ├── STANDARDS.md                # Code and documentation standards
│   ├── FOLDER_STRUCTURE.md         # This file
│   ├── API.md                      # API reference
│   └── ADR-001-chose-fastapi.md    # Architecture Decision Records (ADR)
│
├── src/                            # Application source code
│   └── (see stack-specific layout below)
│
├── tests/                          # Test suites (or co-located with src/)
│   ├── unit/                       # Unit tests (isolated, no I/O)
│   ├── integration/                # Integration tests (DB, API calls)
│   └── e2e/                        # End-to-end tests (browser/API flow)
│
├── scripts/                        # Operational scripts
│   ├── setup.sh                    # Initial environment setup
│   ├── seed.sh                     # Database seeding
│   └── deploy.sh                   # Deployment helper
│
├── config/                         # Application configuration files
│   ├── default.json                # Default config values
│   ├── production.json             # Production overrides
│   └── test.json                   # Test environment config
│
├── .env.example                    # Environment variable template (committed)
├── .gitignore                      # Git ignore rules
├── .gitmessage                     # Conventional commit template
├── .antigravity-rules.md           # Governance rules
├── CONTRIBUTING.md                 # Contributor guide
├── README.md                       # Project overview and quick-start
└── LICENSE                         # License file
```

---

## Stack-Specific Source Layouts

### Node.js / Express API

```
src/
├── app.js                          # Express app factory
├── server.js                       # Server entry point
│
├── config/                         # Runtime config loader
├── routes/                         # Route definitions
│   ├── index.js
│   └── auth.routes.js
├── controllers/                    # Request handlers
│   └── auth.controller.js
├── services/                       # Business logic
│   └── auth.service.js
├── models/                         # Database models (ORM)
│   └── user.model.js
├── middleware/                     # Express middleware
│   ├── auth.middleware.js
│   └── error.middleware.js
├── utils/                          # Pure helper functions
│   └── token.util.js
└── types/                          # TypeScript type definitions (if TS)
    └── index.d.ts
```

### Python / FastAPI

```
src/
├── main.py                         # FastAPI app entry point
│
├── api/                            # Route definitions
│   ├── __init__.py
│   └── v1/
│       ├── __init__.py
│       └── auth.py
├── core/                           # Core config, security, events
│   ├── config.py
│   └── security.py
├── models/                         # SQLAlchemy / Pydantic models
│   ├── user.py
│   └── schemas/
│       └── user.py
├── services/                       # Business logic layer
│   └── auth_service.py
├── repositories/                   # Data access layer
│   └── user_repository.py
├── middleware/                      # Custom middleware
│   └── logging.py
└── utils/                          # Utility functions
    └── token.py
```

### React / Next.js Frontend

```
src/
├── app/                            # Next.js App Router
│   ├── layout.tsx                  # Root layout
│   ├── page.tsx                    # Home page
│   └── (routes)/                   # Route groups
│
├── components/                     # UI components
│   ├── ui/                         # Primitive components (buttons, inputs)
│   └── features/                   # Feature-specific components
│       └── auth/
│           ├── LoginForm.tsx
│           └── LoginForm.test.tsx   # Co-located tests
│
├── hooks/                          # Custom React hooks
├── lib/                            # Third-party config & utilities
├── services/                       # API call layer
├── store/                          # State management (Zustand, Redux)
├── styles/                         # Global styles
└── types/                          # TypeScript types
```

---

## Nesting Depth Rules

| Rule                         | Guideline                                          |
|------------------------------|----------------------------------------------------|
| Maximum nesting depth        | 3 levels below `src/` in most cases               |
| Feature grouping preferred   | Group by domain/feature, not file type             |
| Test co-location             | Tests adjacent to source OR in top-level `tests/`  |
| Never in root                | No source files directly in project root           |
| Config at root               | All config files live at repository root           |

---

## File Naming Conventions

| Context              | Convention         | Example                      |
|----------------------|--------------------|------------------------------|
| JavaScript modules   | `camelCase`        | `authService.js`             |
| TypeScript components| `PascalCase`       | `LoginForm.tsx`              |
| Python modules       | `snake_case`       | `auth_service.py`            |
| Configuration files  | `kebab-case`       | `docker-compose.yml`         |
| Documentation        | `UPPER_SNAKE_CASE` | `CONTRIBUTING.md`, `README.md`|
| Test files           | Mirror source name | `auth.service.test.js`       |

---

*Adapt this structure to your project's needs — consistency within a project is more important than strict adherence to this template.*
