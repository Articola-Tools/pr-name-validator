FROM golang:1.23.4 AS build

COPY ./ /pr-name-validator

WORKDIR /pr-name-validator

RUN go mod download && go build -ldflags "-s -w" -o pr_name_validator ./cmd/pr_name_validator/


FROM gcr.io/distroless/static-debian12:nonroot-8701094b7fe8ff30d0777bbdfcc9a65caff6f40b

COPY --from=build /pr-name-validator/pr_name_validator /pr_name_validator

HEALTHCHECK --timeout=1s --retries=1 CMD /pr_name_validator || exit 1

ENTRYPOINT ["/pr_name_validator"]