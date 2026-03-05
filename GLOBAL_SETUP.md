# Global Governance Setup Guide

This project is now equipped with a global governance mechanism. By following these steps, **every project you initialize in the future** will automatically inherit your commit standards and hooks.

## 🚀 Activation Script

Run the following command in PowerShell (from the repository root) to configure your system:

```powershell
.\scripts\enable-global-governance.ps1
```

### What This Does

1. **Global Git Template**: Sets up `~/.git-templates` as your global template directory.
2. **Auto-Hooks**: Every new `git init` will automatically include the Conventional Commits `pre-commit` hook.
3. **Commit Template**: Configures Git to use your professional `.gitmessage` template globally.

---

## 💉 Injecting Governance Rules

For new projects, you'll also want to include the `.antigravity/` and `.github/` folders. We've provided a script to make this a one-second task:

```powershell
# Usage: .\scripts\inject-governance.ps1 <path-to-your-new-project>
.\scripts\inject-governance.ps1 C:\Users\yourname\Desktop\my-new-app
```

### Why Inject?

While the _hooks_ are global, the _documentation_ (RULES, STANDARDS) and _GitHub templates_ (PR templates, Issue forms) are repository-specific. Injecting them ensures your team (and you) always have the reference materials at hand.

---

## 📌 Reminders for Future Projects

As you requested, here are the core habits for every new project:

1. **Initialize with Power**: Always run `git init` (the global template will handle the rest).
2. **Inject the Docs**: Use `inject-governance.ps1` to bring in the rules.
3. **Commit with Discipline**: Use `git commit` (without `-m` at first) to see your template and write high-quality messages.
