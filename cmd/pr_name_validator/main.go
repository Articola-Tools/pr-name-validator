package main

import (
	"fmt"
	"os"
	"pr-name-validator/internal/validator"
)

const (
	ExpectedArgumentsCount = 2
)

func main() {
	if len(os.Args) < ExpectedArgumentsCount {
		fmt.Println("Usage: pr_name_validator <pr_name>")

		return
	}

	prName := os.Args[1]

	if !validator.ValidatePRName(prName) {
		fmt.Println("Invalid PR name")
		os.Exit(1)
	}
}
