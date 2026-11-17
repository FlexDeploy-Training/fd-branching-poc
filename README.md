# FlexDeploy branching POC

A proof of concept of a branching model driven by FlexDeploy webhooks.

## Branches

| Branch | Created from | Purpose |
|---|---|---|
| `main` | — | What is in production. Changes only by merge from a release branch. |
| `feat/<PI>-<FRICE>-<ticket>` | `main` | One change. FlexDeploy builds and deploys its package on every push. |
| `release/<yyyy-mm-dd>` | `main` | One bundle, assembled from ready feature branches by pull request. |

## Pull requests

- A push to a feature branch opens, or updates, one **draft** pull request to `main`. Its description is the feature's manifest: the files it adds or changes compared with `main`.
- Opening a pull request from the feature branch to a `release/*` branch closes the draft. Only one pull request per feature branch stays open, and the one to a release branch wins.
- A later push to the feature branch adds a comment to its release pull request listing the files that push changed, and resets the approval.
- `release/*` branches need one approving review; a new push dismisses earlier approvals.
