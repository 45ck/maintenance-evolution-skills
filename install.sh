#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
install_skill() {
  local skill="$1"
  mkdir -p "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
  cp "$SCRIPT_DIR/.claude/skills/$skill/SKILL.md" "$HOME/.claude/skills/$skill/SKILL.md"
  cp "$SCRIPT_DIR/.agents/skills/$skill/SKILL.md" "$HOME/.agents/skills/$skill/SKILL.md"
}
SKILLS=(
  bug-reproduction-writer
  change-impact-mapper
  corrective-adaptive-perfective-preventive-classifier
  deprecation-planner
  hotfix-vs-patch-vs-version-update-selector
  maintenance-knowledge-capture-writer
  maintenance-triage-helper
  migration-readiness-checker
  regression-risk-reviewer
  rollback-plan-writer
  root-cause-hypothesis-generator
)
for skill in "${SKILLS[@]}"; do install_skill "$skill"; done
