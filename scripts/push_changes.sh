#!/bin/bash

set -e

MSG=${1:-"update web content"}

echo "📦 Git add..."
git add .

echo "📝 Git commit..."
git commit -m "$MSG" || echo "⚠️ Nothing to commit"

echo "🚀 Git push..."
git push origin main

echo "✅ Code pushed to GitHub"
