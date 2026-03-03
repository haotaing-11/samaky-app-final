# Deployment Guide

This guide covers deploying SAMAKY to various platforms.

## Prerequisites

- GitHub account
- Node.js 16+ installed locally
- Git installed

## Push to GitHub

```bash
# Initialize git repository (if not already done)
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: SAMAKY app"

# Add remote (replace with your repo URL)
git remote add origin https://github.com/yourusername/samaky-app.git

# Push to GitHub
git push -u origin main
```

## Deploy to Vercel (Recommended)

Vercel offers the easiest deployment for React/Vite apps.

### Option 1: Vercel Dashboard (Easiest)

1. Go to [vercel.com](https://vercel.com)
2. Sign in with GitHub
3. Click "New Project"
4. Import your `samaky-app` repository
5. Vercel auto-detects Vite settings
6. Click "Deploy"
7. Your app will be live at `https://your-project.vercel.app`

### Option 2: Vercel CLI

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel

# Follow prompts to link project
# App will be deployed automatically
```

## Deploy to Netlify

### Option 1: Netlify Dashboard

1. Go to [netlify.com](https://netlify.com)
2. Sign in with GitHub
3. Click "Add new site" → "Import an existing project"
4. Select your GitHub repository
5. Build settings (auto-detected from `netlify.toml`):
   - Build command: `npm run build`
   - Publish directory: `dist`
6. Click "Deploy site"

### Option 2: Netlify CLI

```bash
# Install Netlify CLI
npm install -g netlify-cli

# Deploy
netlify deploy --prod

# Follow prompts
```

## Deploy to GitHub Pages

```bash
# Install gh-pages
npm install --save-dev gh-pages

# Add to package.json scripts:
# "deploy": "vite build && gh-pages -d dist"

# Update vite.config.js base to your repo name:
# base: '/samaky-app/'

# Deploy
npm run deploy
```

Your app will be live at: `https://yourusername.github.io/samaky-app/`

## Environment Variables

For production, you may need to add environment variables:

### Vercel
1. Go to Project Settings → Environment Variables
2. Add variables like `VITE_API_URL`, etc.

### Netlify
1. Go to Site Settings → Environment Variables
2. Add your variables

### Local Development
Create a `.env.local` file:
```
VITE_API_URL=http://localhost:3000
```

## Custom Domain

### Vercel
1. Go to Project Settings → Domains
2. Add your custom domain
3. Update DNS records as instructed

### Netlify
1. Go to Domain Settings
2. Add custom domain
3. Follow DNS configuration steps

## Continuous Deployment

Both Vercel and Netlify automatically redeploy when you push to your GitHub repository:

```bash
# Make changes
git add .
git commit -m "Update feature"
git push

# Automatically triggers deployment
```

## Build Optimization

For production builds, Vite automatically:
- Minifies JavaScript and CSS
- Tree-shakes unused code
- Optimizes assets
- Generates source maps

## Monitoring

- **Vercel**: Built-in analytics at Project → Analytics
- **Netlify**: Analytics available in Pro plan
- **Google Analytics**: Add tracking code to `index.html`

## Troubleshooting

### Build Fails
- Check Node.js version (16+ required)
- Clear cache: `rm -rf node_modules && npm install`
- Check build logs for specific errors

### Routes Don't Work
- Ensure `vercel.json` or `netlify.toml` includes SPA redirect rules
- Verify all routes redirect to `index.html`

### Performance Issues
- Enable Vercel/Netlify CDN
- Optimize images (use WebP format)
- Enable compression

## Next Steps

After deployment:
1. Set up custom domain
2. Configure SSL (automatic on Vercel/Netlify)
3. Set up monitoring and analytics
4. Configure environment variables for API endpoints
5. Set up staging environment for testing

---

Questions? Check the [README.md](README.md) or open an issue on GitHub.
