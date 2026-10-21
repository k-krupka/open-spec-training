# Lab 1: Add a welcome message

**Time:** 35 minutes  
**Format:** Work individually

## Goal

Practice the OpenSpec change workflow on a deliberately small, predictable request. The focus is on reviewing the proposed change and checking the implementation, not on asking the AI to solve a complex problem.

## Starting point

Start with a clean OpenSpec project. Copy the distributed [`lab-starter.html`](./lab-starter.html) into the project root and rename it to `index.html`. The page displays **John McClane** in the center.

## Instructions

1. Create a new folder on your laptop
2. Open inside the Visual Studio Code instance
3. Create a change proposal for this request:

   > Add the text “Welcome to my page” directly below “John McClane” on the existing page. Keep both lines centered. Preserve the existing name and styling. Do not add features, dependencies, or unrelated files.

5. Review the proposal before applying it. Check that the requested text and layout are clear, and that the scope has not grown.
6. Apply the change.
7. Inspect the diff and open the page. Confirm the result matches the request.

## Definition of done

- “John McClane” is still present.
- “Welcome to my page” appears directly below the name.
- Both lines are centered.
- No unrelated changes or dependencies were added.

## Useful OpenSpec commands

| Command         | Purpose                                              |
| --------------- | ---------------------------------------------------- |
| `/opsx-explore` | Explore an idea and clarify requirements.            |
| `/opsx-propose` | Create a change proposal and its planning artifacts. |
| `/opsx-update`  | Revise an existing change's planning artifacts.      |
| `/opsx-apply`   | Implement the tasks in a change.                     |
| `/opsx-archive` | Archive a completed change.                          |

## Discussion

Reflect on the following:

> Was the proposal useful for this change, or would you normally just make the edit? What is the smallest change where you would choose to use OpenSpec?

This is intentionally a tiny exercise for rehearsing the workflow. In day-to-day work, using OpenSpec for every small edit can add unnecessary overhead.