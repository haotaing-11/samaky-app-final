# GitHub Setup & Deployment Guide

Complete guide to getting SAMAKY from your local machine to a live website.

## 📋 Prerequisites

- [x] GitHub account ([Sign up here](https://github.com/signup))
- [x] Git installed ([Download here](https://git-scm.com/downloads))
- [x] Node.js 16+ installed ([Download here](https://nodejs.org))

## 1️⃣ Create GitHub Repository

### Option A: GitHub Website
1. Go to [github.com](https://github.com)
2. Click the "+" icon → "New repository"
3. Repository name: `samaky-app`
4. Description: "SAMAKY - Democratizing foundations through charitable giving"
5. Choose "Public" (or "Private" if you prefer)
6. **DO NOT** initialize with README (we already have one)
7. Click "Create repository"

### Option B: GitHub CLI
```bash
gh repo create samaky-app --public --source=. --remote=origin
```

## 2️⃣ Initialize Git (if not already done)

Open your terminal in the `samaky-app` folder:

```bash
cd samaky-app

# Initialize git
git init

# Add all files
git add .

# Make first commit
git commit -m "Initial commit: SAMAKY charitable giving platform"
```

## 3️⃣ Connect to GitHub

Replace `YOUR_USERNAME` with your GitHub username:

```bash
# Add remote repository
git remote add origin https://github.com/YOUR_USERNAME/samaky-app.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Success!** Your code is now on GitHub! 🎉

## 4️⃣ Deploy to Vercel (Recommended)

### Why Vercel?
- ✅ Free tier with unlimited bandwidth
- ✅ Automatic deployments from GitHub
- ✅ Custom domains
- ✅ SSL certificates included
- ✅ Global CDN

### Steps:

1. **Go to Vercel**: [vercel.com/signup](https://vercel.com/signup)

2. **Sign in with GitHub**

3. **Import Project**:
   - Click "Add New..." → "Project"
   - Select your `samaky-app` repository
   - Click "Import"

4. **Configure** (auto-detected):
   - Framework Preset: Vite
   - Build Command: `npm run build`
   - Output Directory: `dist`
   - Install Command: `npm install`

5. **Deploy**:
   - Click "Deploy"
   - Wait 30-60 seconds
   - 🎉 Your app is live!

6. **Get Your URL**:
   - You'll get: `https://samaky-app-xyz.vercel.app`
   - Or add custom domain in Settings

### Automatic Redeployment

Every time you push to GitHub:
```bash
git add .
git commit -m "Update features"
git push
```
Vercel automatically rebuilds and redeploys! ✨

## 5️⃣ Alternative: Deploy to Netlify

1. Go to [netlify.com](https://app.netlify.com/signup)
2. Sign in with GitHub
3. Click "Add new site" → "Import an existing project"
4. Choose GitHub → Select `samaky-app`
5. Build settings (auto-detected from `netlify.toml`)
6. Click "Deploy site"

## 6️⃣ Custom Domain (Optional)

### On Vercel:
1. Go to your project → Settings → Domains
2. Add your domain (e.g., `samaky.com`)
3. Update your domain's DNS:
   ```
   Type: CNAME
   Name: @
   Value: cname.vercel-dns.com
   ```

### On Netlify:
1. Site Settings → Domain management
2. Add custom domain
3. Follow DNS instructions

## 🔄 Development Workflow

### Daily Development
```bash
# 1. Make changes to code
# 2. Test locally
npm run dev

# 3. Commit changes
git add .
git commit -m "Add new feature"

# 4. Push to GitHub (triggers auto-deploy)
git push
```

### Branching for Features
```bash
# Create feature branch
git checkout -b feature/new-feature

# Make changes, commit
git add .
git commit -m "Add feature"

# Push branch
git push origin feature/new-feature

# Create Pull Request on GitHub
# Merge when ready
```

## 📊 Monitoring

### Vercel Analytics
1. Go to project → Analytics tab
2. See real-time visitor stats
3. Monitor performance metrics

### GitHub Insights
1. Go to repository → Insights
2. View commits, contributors, traffic

## 🐛 Troubleshooting

### "Permission denied" when pushing
```bash
# Use personal access token or SSH key
# Generate at: github.com/settings/tokens
```

### Build fails on Vercel
1. Check build logs in Vercel dashboard
2. Common issues:
   - Missing dependencies: Check `package.json`
   - Wrong Node version: Specify in `package.json`:
     ```json
     "engines": {
       "node": ">=16.0.0"
     }
     ```

### Changes not appearing
```bash
# Clear cache and rebuild
vercel --prod

# Or in Vercel dashboard: Deployments → Redeploy
```

## 🎯 Next Steps

After deployment:

1. **Share your URL!** 
   - Tweet: "Check out SAMAKY: [your-url]"
   - Post on LinkedIn
   - Share with friends

2. **Set up monitoring**
   - Add Google Analytics
   - Set up error tracking (Sentry)

3. **Continuous improvement**
   - Monitor performance
   - Gather user feedback
   - Iterate on features

4. **Backend integration**
   - Set up API endpoints
   - Connect to database
   - Add authentication

## 📚 Resources

- [GitHub Docs](https://docs.github.com)
- [Vercel Docs](https://vercel.com/docs)
- [Netlify Docs](https://docs.netlify.com)
- [Vite Guide](https://vitejs.dev/guide)

## 🆘 Need Help?

- Open an issue on GitHub
- Check [QUICKSTART.md](QUICKSTART.md)
- Read [DEPLOYMENT.md](DEPLOYMENT.md)
- Email: support@samaky.com (when available)

---

**You're ready to deploy!** 🚀

From zero to deployed in under 10 minutes. Let's democratize foundations together!
