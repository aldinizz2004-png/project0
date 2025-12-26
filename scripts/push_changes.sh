#!/bin/bash
set -e

MSG=${1:-"Update project files"}

echo "🔄 Checking branch..."
BRANCH=$(git branch --show-current)
if [ "$BRANCH" != "main" ]; then
  echo "❌ You are not on main branch"
  exit 1
fi

echo "📥 Pulling latest changes (rebase)..."
if ! git pull --rebase origin main; then
  echo "❌ Rebase failed. Fix conflicts then run again."
  exit 1
fi

echo "📦 Git add..."
git add .

echo "📝 Git commit..."
if git diff --cached --quiet; then
  echo "⚠️ Nothing to commit"
else
  git commit -m "$MSG"
fi

echo "🚀 Git push..."
git push origin main

echo "✅ Code pushed successfully"
