#!/bin/bash

echo "🌟 SAMAKY Setup Script"
echo "======================"
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null
then
    echo "❌ Node.js is not installed!"
    echo "📥 Please install Node.js 16+ from: https://nodejs.org"
    exit 1
fi

echo "✅ Node.js $(node --version) detected"
echo ""

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Dependencies installed successfully!"
    echo ""
    echo "🚀 You can now run:"
    echo ""
    echo "   npm run dev      # Start development server"
    echo "   npm run build    # Build for production"
    echo "   npm run preview  # Preview production build"
    echo ""
    echo "📖 Check QUICKSTART.md for more details"
    echo ""
    echo "🎉 Happy coding!"
else
    echo ""
    echo "❌ Installation failed!"
    echo "Try: rm -rf node_modules package-lock.json && npm install"
fi
