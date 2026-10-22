# When to use OpenSpec — and when not to

OpenSpec adds reviewable artifacts and preserves decisions, but that process has a cost. Use it when the value of clarified intent, shared agreement, or durable history is greater than the overhead.

## A practical decision rule

| Situation | Usually appropriate | Why |
| --------- | ------------------ | --- |
| Typo, local rename, or obvious one-line correction | Direct edit | Little ambiguity or decision history to preserve. |
| Small correction that changes an agreed requirement, operational setting, or important rationale | Focused OpenSpec change | The small size does not remove the value of recording why behavior changed. |
| New feature, integration, security improvement, or other cross-cutting change | OpenSpec change | Clarification, review, and traceable decisions reduce risk and drift. |
| Exploratory or disposable side project | Use judgment | Specs may help shape an idea, but a full workflow may be more overhead than value. |
| Production or team-owned system | Usually use it for meaningful behavior changes | Shared decisions and history can help reviewers and future maintainers. |

These are decision aids, not mandatory rules. Ask: **Will another person need to understand the intent, trade-offs, or reason for this change later?** If yes, capture that context. If not, a direct edit may be enough.

## Correcting agent work versus changing intent

- **The agreed requirement is right; implementation is wrong:** correct the code, inspect the diff, and verify it against the requirement. Keep the artifacts aligned if the correction changes the planned work or tasks.
- **The requirement, decision, or rationale is wrong or has changed:** revise the active change or create a focused new one, record the updated decision, then implement and verify.
- **A direct edit was made outside the workflow:** do not assume a future apply will automatically reconcile it. Compare the working tree with the active change and current spec. Decide whether to update the artifacts, keep the direct fix, or revert it; record consequential deviations.
- **The correction is trivial and its history does not matter:** fix it directly if that is the team's normal practice.

There is no immutability rule that makes a mistaken proposal untouchable. Review and correct the artifacts when they are wrong; preserve meaningful decisions rather than preserving mistakes.

## Common mistakes

1. Making one change so large that its proposal and implementation are hard to review.
2. Skipping exploration when important requirements are ambiguous.
3. Jumping straight to apply without reviewing the proposal, specs, and task scope.
4. Treating completed tasks as proof; verify the behavior and inspect the diff.
5. Assuming the agent will remember or reconcile undocumented edits automatically.
6. Treating every small code correction as a reason to create a full change.

Prefer a sequence of small, reviewable changes over a giant “mega-spec.” OpenSpec supports engineering judgment; it does not replace it.
