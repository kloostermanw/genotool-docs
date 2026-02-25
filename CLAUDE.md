# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a documentation site for GenoTool, a web-based genogram creation tool. The site is built using Zensical (successor to MkDocs Material) and automatically deployed to https://docs.genotool.com via GitHub Actions.

**Main Application Repository**: https://github.com/kloostermanw/genotool
**Production Application**: https://app.genotool.com

This repository contains only the documentation; the actual GenoTool application code is maintained separately.

## Development Commands

### Local Development
```bash
# Install dependencies
pip install zensical

# Start local development server (with live reload)
zensical serve

# Build the static site
zensical build
```

The local server runs at http://localhost:8000/ by default.

### Deployment
Deployment is automatic via GitHub Actions on push to `master` or `main` branches.

## Repository Structure

- `docs/` - All documentation markdown files
  - `index.md` - Homepage/landing page
  - `*.md` - Individual documentation pages (getting-started, groups, fonts, birthday, etc.)
  - `assets/` - Images, logos, and static assets
- `mkdocs.yml` - Zensical/MkDocs configuration (theme, extensions, navigation)
- `.github/workflows/ci.yml` - GitHub Actions CI/CD pipeline
- `.gitrelease` - Git-flow release configuration

## Git Workflow

This repository uses git-flow:
- `develop` - Development branch (source)
- `master` - Production branch (target for releases)
- Releases are managed via the `.gitrelease` configuration

## Theme Configuration

The site uses Material theme with:
- **Primary color**: `#160781` (custom purple)
- **Accent colors**: Deep purple (dark mode), deep orange (light mode)
- **Fonts**: Merriweather Sans (text), Red Hat Mono (code)
- **Logo/Favicon**: Custom assets in `docs/assets/`
- **Features**: Dark/light mode toggle, navigation footer

## Markdown Extensions

The site supports:
- Admonitions (note/warning boxes)
- Mermaid diagrams
- Code highlighting
- Tabbed content
- Emoji (Material emoji set)
- Attribute lists

When adding new documentation, use these extensions to enhance content presentation.

## Documentation Guidelines

- All documentation files go in `docs/` directory
- Screenshots/images go in `docs/assets/` and are referenced as `assets/filename.png`
- Navigation is explicitly defined in mkdocs.yml
- GenoTool is consistently referred to as "GenoTool" or "Genotool" (inconsistent in existing docs)

