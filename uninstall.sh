#!/usr/bin/env bash
set -euo pipefail
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
for skill in "${SKILLS[@]}"; do
  rm -rf "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
done
