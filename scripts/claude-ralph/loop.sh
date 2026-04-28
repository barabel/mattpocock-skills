#!/bin/bash
# Usage: ./scripts/claude-ralph/loop.sh refactor-use-view-items-animations

TASK="${1}"
PRD="docs/prd/${TASK}.md"
ISSUES_DIR="docs/issues/${TASK}"
PROGRESS="docs/progress/${TASK}.txt"
PROMPT="scripts/claude-ralph/prompt.md"

mkdir -p docs/progress
touch "${PROGRESS}"

PROMPT_TEXT=$(envsubst < "${PROMPT}")

claude --permission-mode acceptEdits "@${PRD} @${PROGRESS} ${PROMPT_TEXT}"
