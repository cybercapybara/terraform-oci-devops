# terraform-oci-devops

Terraform module that manages an [Oracle Cloud Infrastructure](https://www.oracle.com/cloud/)
DevOps project, the top-level container for code repositories, build and deployment
pipelines, and artifacts. Project events are published to a Notifications topic.

## Usage

```hcl
module "devops_project" {
  source = "github.com/cybercapybara/terraform-oci-devops"

  compartment_id        = var.compartment_id
  name                  = "prod-devops"
  description           = "Production delivery pipelines"
  notification_topic_id = var.topic_id

  freeform_tags = {
    Environment = "production"
    ManagedBy   = "terraform"
  }
}
```

A runnable example lives in [`examples/basic`](examples/basic).

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.5   |
| oci       | >= 5.0   |

## Inputs

| Name                    | Description                                                       | Type          | Default | Required |
|-------------------------|-------------------------------------------------------------------|---------------|---------|:--------:|
| `compartment_id`        | OCID of the compartment in which to create the project.           | `string`      | n/a     |   yes    |
| `name`                  | Name of the DevOps project (unique within the compartment).       | `string`      | n/a     |   yes    |
| `description`           | Description of the DevOps project.                                | `string`      | `null`  |    no    |
| `notification_topic_id` | OCID of the ONS topic the project publishes events to.            | `string`      | n/a     |   yes    |
| `freeform_tags`         | Free-form tags applied to the DevOps project.                     | `map(string)` | `{}`    |    no    |
| `defined_tags`          | Defined tags applied to the project, keyed `namespace.key`.       | `map(string)` | `{}`    |    no    |

## Outputs

| Name        | Description                              |
|-------------|------------------------------------------|
| `id`        | OCID of the DevOps project.              |
| `name`      | Name of the DevOps project.              |
| `namespace` | Namespace associated with the project.   |
| `state`     | Lifecycle state of the DevOps project.   |

## License

[MIT](LICENSE)
