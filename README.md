# deployed

This README exists to prevent errors during push operations.

## Summary

This repository contains a pharmacy app (praba-appmobile) that needs to be deployed to GitHub Pages.

## GitHub Pages Deployment

The application is configured to deploy to GitHub Pages via:
- gh-pages branch
- GitHub Actions workflow (.github/workflows/gh-pages-deploy.yml)

## Contents

The main application code is in the praba-app/ directory with:
- index.html (bundled React application)
- README.md (application documentation)

## Deployment Steps

1. Build the application
2. Commit to gh-pages branch
3. Push to GitHub
4. Configure GitHub Pages

## Error Resolution

If deployment fails due to configuration issues, run:
- git submodule deinit -f <path>
- git rm -rf --cached <path>
- rm -rf .git/modules/<path>

## Files

- deploy.sh: Helper script for deployment
- .github/workflows/gh-pages-deploy.yml: GitHub Actions workflow
- .DS_Store: macOS system file
