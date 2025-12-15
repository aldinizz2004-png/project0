#!/bin/bash

# ----------------------------------------
# Auto Git Push Script for CI/CD Project
# ----------------------------------------

echo " Starting automated Git push..."

# Make sure we are inside a git repository
if [ ! -d ".git" ]; then
    echo " Error: This directory is not a Git repository."
    exit 1
fi

# Check if there are changes
if [[ -z $(git status --porcelain) ]]; then
    echo " No changes detected. Nothing to push."
    exit 0
fi

# Add all changes
git add .

# Commit with timestamp
commit_msg="Auto update on $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$commit_msg"

# Push to main branch
git push origin main

echo " Changes pushed successfully to GitHub!"
