# Terraform CI/CD using GitHub Actions

A complete Terraform CI/CD Pipeline using GitHub Actions.

## Prepare Terraform code

* Setup Terraform backend
* Make sure you can run the Terraform code locally against the Terraform backend

## Run GitHub Actions locally

The tool `act` help with local testing but in limited cases.

https://github.com/nektos/act

## Third-party Actions

The pipeline is using following 3rd party Actions

* [dflook/terraform-github-actions](https://github.com/dflook/terraform-github-actions): Terraform related tasks such `terraform plan`, `terraform fmt`, `terraform apply`, etc.
* [codigube/github-action-notify-slack](https://github.com/codigube/github-action-notify-slack): Slack notification

## Setup Secrets

GitHub Actions uses GitHub Secrets as basic way to store secrets. You can follow this [link](https://docs.github.com/en/free-pro-team@latest/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-a-repository) to learn how to do it.
