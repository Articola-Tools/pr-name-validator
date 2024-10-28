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

Our PR naming convention is based on
[Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)
with the following modifications:

- The commit area is required.
- Only `!` after the area must be used to mark a commit as a breaking change.

The following PR types are allowed:

- `fix` - A patch for a bug within the codebase.
- `feat` - A new feature for the codebase.
- `setup` - Configuration of repository/tools/assets/resources.
- `doc` - New or updated documentation within the repository/codebase.
- `refactor` - Refactoring or style improvements of the codebase.
- `test` - New tests or changes in existing tests.
- `optimization` - Optimizations of the codebase.

### Examples of good PR names

- fix(cgen): fix consts generation
- feat(cgen): add support for fixed arrays
- setup(ci): add Clang build on Windows to CI checks
- doc(builtin): add documentation to `get_element()` function
- refactor(examples): improve Fibonacci implementation
- test(tools): add tests for `spawn-doctor` tool
- optimization(parser): speedup parsing of multiple-file project
- feat(mem)!: `unsafe` allocation public functions become private functions
