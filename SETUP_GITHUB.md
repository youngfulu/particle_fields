# Setting up GitHub Repository

Your project is ready to push to GitHub! Follow these steps:

## Step 1: Create a new repository on GitHub

1. Go to [GitHub](https://github.com) and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Name it: `particles-geometry-attraction` (or any name you prefer)
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

## Step 2: Connect your local repository to GitHub

After creating the repository on GitHub, you'll see instructions. Run these commands in your terminal:

```bash
cd "/Users/ilyaduganov/Desktop/web folio/particles-geometry-attraction"

# Add the remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/particles-geometry-attraction.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Alternative: Using SSH

If you prefer SSH (and have it set up):

```bash
git remote add origin git@github.com:YOUR_USERNAME/particles-geometry-attraction.git
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages (Optional)

To host the project on GitHub Pages:

1. Go to your repository on GitHub
2. Click "Settings" → "Pages"
3. Under "Source", select "Deploy from a branch"
4. Choose "main" branch and "/ (root)" folder
5. Click "Save"
6. Your site will be available at: `https://YOUR_USERNAME.github.io/particles-geometry-attraction/particles-geometry-attraction.html`

## Quick Setup Script

You can also run this (replace YOUR_USERNAME):

```bash
cd "/Users/ilyaduganov/Desktop/web folio/particles-geometry-attraction"
git remote add origin https://github.com/YOUR_USERNAME/particles-geometry-attraction.git
git branch -M main
git push -u origin main
```

