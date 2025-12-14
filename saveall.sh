#!/bin/bash
# saveall - Save data science projects and sync with GitHub

set -e  # Exit on error

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Data Science Portfolio Sync ===${NC}"
echo "Repository: data-science"
echo "Host: $(hostname)"
echo "Time: $(date '+%Y-%m-%d %H:%M:%S')"
echo ""

# Change to script directory
cd "$(dirname "$0")"

# Check for uncommitted changes
echo -e "${BLUE}Checking for changes...${NC}"
if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
    echo "No changes to commit"
else
    echo "Changes detected"

    # Stage all changes
    echo -e "${BLUE}Staging changes...${NC}"
    git add -A

    # Get diff summary for commit message
    DIFF_SUMMARY=$(git diff --cached --stat)

    # Create commit message with timestamp and change summary
    COMMIT_MSG="Data science update: $(date '+%Y-%m-%d %H:%M:%S') from $(hostname)

Summary of changes:
$DIFF_SUMMARY"

    # Commit
    echo -e "${BLUE}Committing changes...${NC}"
    git commit -m "$COMMIT_MSG"
fi

# Pull latest from remote (rebase to avoid merge commits)
echo -e "${BLUE}Pulling latest from remote...${NC}"
git pull --rebase || echo "No remote configured or unable to pull"

# Push to GitHub
echo -e "${BLUE}Pushing to GitHub...${NC}"
git push || echo "No remote configured or unable to push"

echo -e "${GREEN}✓ Data science portfolio synced${NC}"
