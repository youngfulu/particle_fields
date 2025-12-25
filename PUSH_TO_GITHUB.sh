#!/bin/bash
# Script to push Particle-fields to GitHub
# Make sure you've created the repository at: https://github.com/youngfulu/Particle-fields

cd "$(dirname "$0")"

echo "Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "🔗 Repository: https://github.com/youngfulu/Particle-fields"
    echo "🌐 GitHub Pages: https://youngfulu.github.io/Particle-fields/particles-geometry-attraction.html"
    echo ""
    echo "To enable GitHub Pages:"
    echo "1. Go to: https://github.com/youngfulu/Particle-fields/settings/pages"
    echo "2. Source: Deploy from a branch"
    echo "3. Branch: main, Folder: / (root)"
    echo "4. Save"
else
    echo ""
    echo "❌ Push failed. Make sure:"
    echo "1. The repository exists at: https://github.com/youngfulu/Particle-fields"
    echo "2. You're logged into GitHub"
    echo "3. You have push access to the repository"
fi

