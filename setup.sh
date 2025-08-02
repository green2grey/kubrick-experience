#!/bin/bash

echo "🎬 Kubrick Experience Setup"
echo "=========================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Initialize git repository
echo "📁 Initializing Git repository..."
git init

# Add all files
echo "📦 Adding files..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Kubrick Experience website"

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub"
echo "2. Add the remote origin:"
echo "   git remote add origin https://github.com/YOUR-USERNAME/kubrick-experience.git"
echo "3. Push to GitHub:"
echo "   git push -u origin main"
echo "4. Enable GitHub Pages in Settings → Pages"
echo ""
echo "🚀 Your site will be live at: https://YOUR-USERNAME.github.io/kubrick-experience/"