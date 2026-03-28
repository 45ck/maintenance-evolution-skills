# Sample flow

## Scenario
A team is dealing with a production defect, an uncertain root cause, and pressure to decide whether to hotfix immediately or package the change into a safer patch.

## Suggested flow
1. Run `maintenance-triage-helper` to classify severity, urgency, and likely ownership.
2. Run `bug-reproduction-writer` to produce deterministic steps and isolate environment-specific behavior.
3. Run `root-cause-hypothesis-generator` to separate observed symptoms from plausible causes.
4. Run `change-impact-mapper` to estimate blast radius across code, data, APIs, users, and operations.
5. Run `regression-risk-reviewer` to identify what is most exposed if the proposed fix ships.
6. Run `hotfix-vs-patch-vs-version-update-selector` to choose the release path deliberately.
7. Run `rollback-plan-writer` before release so reversal conditions are explicit.
8. If the change affects consumers or interfaces, run `deprecation-planner` and `migration-readiness-checker`.
9. After resolution, run `maintenance-knowledge-capture-writer` so the issue becomes reusable operational knowledge rather than tribal memory.

## Expected artifacts
- maintenance triage note
- reproduction steps
- root-cause hypothesis list
- impact map
- regression risk review
- release-path decision note
- rollback plan
- deprecation or migration plan where needed
- maintenance knowledge capture note
