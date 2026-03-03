# Quick Start Guide

Get SAMAKY running in under 2 minutes!

## 1️⃣ Install Dependencies

```bash
npm install
```

## 2️⃣ Start Development Server

```bash
npm run dev
```

## 3️⃣ Open in Browser

Visit: **http://localhost:5173**

That's it! 🎉

---

## What You'll See

- **Home Tab**: Your foundation dashboard with nearby volunteer opportunities
- **Calendar Tab**: Giving calendar with match days and special events
- **Search Tab**: Interactive map to discover nonprofits near you
- **Inbox Tab**: Updates and receipts from your giving
- **Profile Tab**: Your foundation overview and impact sharing

---

## Next Steps

### Deploy to Production
```bash
npm run build
npm run preview
```

### Deploy to Vercel (Recommended)
1. Push to GitHub
2. Import project at [vercel.com](https://vercel.com)
3. Deploy! ✨

See [DEPLOYMENT.md](DEPLOYMENT.md) for detailed deployment instructions.

---

## Troubleshooting

**Port 5173 already in use?**
```bash
# Kill the process
lsof -ti:5173 | xargs kill -9

# Or use a different port
npm run dev -- --port 3000
```

**Dependencies not installing?**
```bash
# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install
```

---

## Project Structure

```
samaky-app/
├── src/
│   ├── App.jsx     # 🎯 Main app (start here!)
│   └── main.jsx    # Entry point
├── public/         # Static assets
├── index.html      # HTML template
└── package.json    # Dependencies
```

---

**Need help?** Open an issue on GitHub or check out the full [README.md](README.md)
