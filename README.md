
# Hello everyone, welcome to my world, I hope you enjoy it

## First, the problem, think of the following scenario, you need to call a route in a certain period and wanted to do that using eventBridge in aws

### If you wanted using that code in your own env aws, you need config your env aws

```bash
 export AWS_ACCESS_KEY_ID=
 export AWS_SECRET_ACCESS_KEY=
 export AWS_DEFAULT_REGION=us-east-1
```

### The important topics in here: terraform, eventBridge, iam, provider aws

### What do we have? a route in api gateway called '/hello' using a GET method and the default bus in eventBridge

### The main commands

```bash
 terraform init
```

 command initializes a working directory containing Terraform configuration files.

```bash
 terraform fmt
```

 command is used to rewrite Terraform configuration files to a canonical format and style.

```bash
 terraform validate
```

 command validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc.

```bash
 terraform plan
```

 command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. By default, when Terraform creates a plan it.

```bash
 terraform apply
```

 command executes the actions proposed in a Terraform plan.

```bash
 terraform destroy
```

 command is a convenient way to destroy all remote objects managed by a particular Terraform configuration.

### References used

[https://registry.terraform.io/providers/hashicorp/aws/latest/docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

[https://developer.hashicorp.com/terraform/cli/commands/fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt)
