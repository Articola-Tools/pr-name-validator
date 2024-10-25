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
`docker run --rm -v ghcr.io/articola-tools/pr-name-validator "PR-123"`
