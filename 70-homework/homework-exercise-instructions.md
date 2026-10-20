# Homework: From an idea to a readiness endpoint

## Goal

Use OpenSpec to create a small API service and add a readiness endpoint. Start with the same exploration prompt as everyone else, then make and document your own engineering decisions.

The goal is to practice clarifying requirements, making engineering decisions, reviewing the agent's suggestions, and verifying the result.

This is follow-up homework after the workshop.

## Starting point

- Use a new, isolated repository initialized with OpenSpec.
- Choose a language and framework you already know.
- Keep the service runnable locally without cloud credentials or paid services.
- Do not use production code, credentials, or data.

## 1. Start with this exploration prompt

Invoke the OpenSpec explore workflow in your agent, then submit the following prompt unchanged:

> /openspec-explore
>
> I want to create a small API service that runs locally. Add a readiness endpoint so the platform can tell whether this service is ready to receive traffic.
>
> Before proposing or implementing anything, help me explore what "ready" should mean. Surface the important ambiguities, explain the tradeoffs, and ask me focused clarifying questions.

## 2. Explore and make decisions

Answer the agent's questions using your own judgment. You do not have to accept its first recommendation.

Before proposing the change, make sure you have considered:

- What the service does beyond reporting readiness: keep this to one simple API operation.
- How readiness differs from liveness.
- What makes the service ready or unready, including during startup.
- Which endpoint path, HTTP status codes, and response body express that contract.
- Whether a dependency affects readiness and why.
- What information the endpoint should avoid exposing.

Record the reasoning behind your decisions, not just the final choice.

**Scope limit:** Use no more than one simulated dependency. No real database, Kubernetes cluster, authentication system, or cloud deployment is required. Do not build them just because the agent suggests them.

## 3. Propose and review

Use the OpenSpec propose workflow to capture the agreed scope.

Review the generated artifacts before applying:

- Are the readiness conditions observable and testable?
- Are ready and unready responses specified precisely?
- Is existing or unrelated behavior kept out of scope?
- Did the agent invent requirements or add unnecessary infrastructure?
- Do the tasks include verification, not just implementation?

Correct the artifacts where necessary.

## 4. Apply and verify

Use the OpenSpec apply workflow to implement the reviewed change.

Run the service and inspect the diff. Verify:

- The simple API operation works.
- The readiness endpoint returns the agreed status code and response body when ready.
- You can deliberately reproduce an unready condition and observe the agreed response.
- Returning to a ready condition produces the expected response.
- Responses do not expose credentials or sensitive internal details.

Add automated tests for both ready and unready behavior. Make those states deterministic; do not rely on catching a short startup window or on an external service failing.

If implementation reveals a flawed assumption, revisit the relevant artifacts and record what changed. A completed task checklist alone is not evidence that the service works.

## Completion and support

Once you have implemented and verified the service, the homework is complete. No submission or sharing of results is required.

If you have questions or would like to show and discuss your results, contact the trainer.