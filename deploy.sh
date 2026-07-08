#!/bin/sh
echo "Deploying gh-pages branch to GitHub..."
git checkout -b gh-pages

cd praba-app

# Build the app if needed (assuming production build)
# npm run build

cd ..

# Add all files
git add .

# Commit with timestamp
git commit -m "Deploy gh-pages $(date -u)"

# Push to origin
git push origin gh-pages
