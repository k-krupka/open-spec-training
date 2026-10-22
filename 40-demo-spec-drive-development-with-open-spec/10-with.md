# With OpenSpec

Idea
 ↓
Explore
 ↓
Proposal
 ↓
Review
 ↓
Implementation
 ↓
Sync / Archive

## Demo review checkpoints

Pause at each checkpoint and ask participants to review the artifacts rather than just watch the commands:

1. **Explore:** What is ambiguous in the request? Which decisions need an answer before implementation?
2. **Proposal:** Does it capture the agreed behavior and explicitly exclude unrelated ideas?
3. **Specs and tasks:** Are requirements observable and testable? Do tasks cover verification as well as implementation?
4. **Apply:** Is the diff limited to the approved change? Has the assistant invented details?
5. **Verify:** Open the result and compare it with the agreed behavior. Do not treat checked tasks as proof that the feature works.
6. **Sync and archive:** Explain that syncing updates the current spec and archiving preserves the completed change history; do these only after the implementation has been reviewed and verified.

### Dark-mode example: scope boundary

The follow-up request asks for a light/dark theme toggle. During the demo, an ad-hoc request adds a Star Wars theme and a logo. Ask the audience to identify which requirements are authorized by the original change and which need separate agreement.

**Expected review:** implement only the agreed light/dark toggle. A third theme and a logo are scope additions, not harmless details; clarify whether they are wanted and, if so, record them in an updated or separate change before applying them. Review the artifacts for accidental assumptions such as persistence, system-preference behavior, or extra dependencies.
