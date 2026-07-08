#!/bin/sh
echo "Deploying gh-pages branch to GitHub..."

# Add the current directory files
git add .

# Commit and push to gh-pages branch
git commit -m "Deploy gh-pages $(date -u)"
git push origin gh-pages

# Update the submodule in gh-pages branch
if [ -d "praba-app/.git" ]; then
  cd praba-app
  git add .
  git commit -m "Update praba-app in gh-pages deployment"
  cd ..
  # Push the submodule changes to gh-pages branch
  git add -u
  git commit -m "Update submodule in gh-pages deployment"
  git push origin gh-pages
fi
