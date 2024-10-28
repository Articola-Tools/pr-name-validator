# Articola Tools' PR name validator

[![image size](https://ghcr-badge.egpl.dev/articola-tools/pr-name-validator/size?color=dodgerblue)](https://ghcr-badge.egpl.dev/articola-tools/pr-name-validator/size?color=dodgerblue)

This repo contains Dockerfile with preconfigured PR names validator, based on
[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).
This linter is used in Articola Tools organization's repositories to validate PR
names.

## Usage

Use `ghcr.io/articola-tools/pr-name-validator` Docker image with one string
argument that represents PR name to validate.

Example command to use this linter -
`docker run --rm ghcr.io/articola-tools/pr-name-validator "PR-123"`

## PR naming convention

To ensure an easy, readable, and suitable commit history on the main branch for
both humans and computers, we have established a PR (Pull Request) naming
convention that you must use when contributing to the main repo. However, these
rules apply only to PR names. You may name the "inner" commits within your PR as
you like. Since we are using squash merges for PRs, only the PR name matters in
this case, as it will become the commit name on the main branch once your PR is
merged.

Our PR naming convention is based on
[Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)
with the following modifications:

- The commit area is required.
- Only `!` after the area must be used to mark a commit as a breaking change.
  The use of **BREAKING CHANGE** in commit messages is not allowed.
- The `BREAKING CHANGE` footer is not allowed. Use `!` instead to mark breaking
  change PR.

The following PR types are allowed:

- `fix` - A patch for a bug within the codebase.
- `feat` - A new feature for the codebase.
- `setup` - Configuration of repository/tools/assets/resources.
- `doc` - New or updated documentation within the repository/codebase.
- `refactor` - Refactoring or style improvements of the codebase.
- `test` - New tests or changes in existing tests.
- `optimization` - Optimizations of the codebase.

### When to use `!`?

`!` after the PR area indicates that the PR introduces breaking changes.
A breaking change refers to any change in the codebase that causes previously
working code to fail. If you are unsure whether your PR constitutes a breaking
change, ask for help from developers in the PR discussion or on our
[Discord](https://discord.gg/x9DCUXQm) server.

### Examples of good PR names

- fix(cgen): fix consts generation
- feat(cgen): add support for fixed arrays
- setup(ci): add Clang build on Windows to CI checks
- doc(builtin): add documentation to `get_element()` function
- refactor(examples): improve Fibonacci implementation
- test(tools): add tests for `spawn-doctor` tool
- optimization(parser): speedup parsing of multiple-file project
- feat(mem)!: `unsafe` allocation public functions become private functions

### What if my PR covers multiple types/areas?

There may be situations where your PR covers multiple topics (e.g., fix and doc)
and/or areas (e.g., cgen and builtin). In such cases, you must check whether
your PR can be divided into smaller PRs that address specific types/areas
individually. This approach enhances readability and simplifies the review
process. Also, unit commits are required for the changelog generation tool.
