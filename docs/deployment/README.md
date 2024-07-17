# Deployment

1. [Connect the Github repository](https://cloud.google.com/build/docs/automating-builds/github/connect-repo-github?generation=1st-gen).
1. `cd` into the `infra/terraform/bootstrap/environments/<environment name>` folder.
1. Create a [`terraform.tfvars`](https://developer.hashicorp.com/terraform/language/values/variables#variable-definitions-tfvars-files) file and fill out the variables.
1. Run `terraform init -backend-config=bucket=<tfstate_bucket>`.
1. Run `terraform apply`.