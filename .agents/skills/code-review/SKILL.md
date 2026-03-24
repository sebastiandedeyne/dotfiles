---
description: Code review
---

Review a branch.

- When I provide a branch name that's not locally available, pull it from the remote repository before proceeding with the review.
- When I don't provide a specific branch to review against, the review should compare the `main` branch with the current branch.

When reviewing:

- Check if the current branch and the branch being compared agains are up to date with the remote repository. If not, pull the latest changes on before proceeding with the review. If there are local changes, prompt my to get the repository to a clean slate first.
- First, briefly describe the feature being added by the code.
- Then focus on architecture and design decisions, not on code style or formatting and distill them to a high level overview of the changes.
- Then dive into specific areas that stand out.
- Finally, list notable changes that are not part of the main feature being added if any.
