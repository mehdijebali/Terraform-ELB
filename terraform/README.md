<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.84.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.levelup-autoscaling](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_elb.tf-elb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb) | resource |
| [aws_key_pair.tf-ssh-key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_launch_template.tf-launchtemplate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_security_group.elb-securitygroup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.instance-securitygroup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.packer_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AUTOSCALING_GROUP_MAX_SIZE"></a> [AUTOSCALING\_GROUP\_MAX\_SIZE](#input\_AUTOSCALING\_GROUP\_MAX\_SIZE) | n/a | `number` | `2` | no |
| <a name="input_AUTOSCALING_GROUP_MIN_SIZE"></a> [AUTOSCALING\_GROUP\_MIN\_SIZE](#input\_AUTOSCALING\_GROUP\_MIN\_SIZE) | n/a | `number` | `2` | no |
| <a name="input_AUTOSCALING_GROUP_NAME"></a> [AUTOSCALING\_GROUP\_NAME](#input\_AUTOSCALING\_GROUP\_NAME) | n/a | `string` | `"tf-autoscaling"` | no |
| <a name="input_AVAILABILITY_ZONES"></a> [AVAILABILITY\_ZONES](#input\_AVAILABILITY\_ZONES) | n/a | `list(any)` | <pre>[<br/>  "us-east-1a",<br/>  "us-east-1b"<br/>]</pre> | no |
| <a name="input_AWS_REGION"></a> [AWS\_REGION](#input\_AWS\_REGION) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_ELB_SG_DESCRIPTION"></a> [ELB\_SG\_DESCRIPTION](#input\_ELB\_SG\_DESCRIPTION) | n/a | `string` | `"security group for Elastic Load Balancer"` | no |
| <a name="input_GW_NAME"></a> [GW\_NAME](#input\_GW\_NAME) | n/a | `string` | `"demo-gw"` | no |
| <a name="input_HEALTH_CHECK_GRACE_PERIOD"></a> [HEALTH\_CHECK\_GRACE\_PERIOD](#input\_HEALTH\_CHECK\_GRACE\_PERIOD) | n/a | `number` | `200` | no |
| <a name="input_HEALTH_CHECK_TYPE"></a> [HEALTH\_CHECK\_TYPE](#input\_HEALTH\_CHECK\_TYPE) | n/a | `string` | `"ELB"` | no |
| <a name="input_INSTANCE_SG_DESCRIPTION"></a> [INSTANCE\_SG\_DESCRIPTION](#input\_INSTANCE\_SG\_DESCRIPTION) | n/a | `string` | `"security group for instances"` | no |
| <a name="input_INSTANCE_TYPE"></a> [INSTANCE\_TYPE](#input\_INSTANCE\_TYPE) | n/a | `string` | `"t2.micro"` | no |
| <a name="input_KEY_NAME"></a> [KEY\_NAME](#input\_KEY\_NAME) | n/a | `string` | `"tf-ssh-key"` | no |
| <a name="input_LAUNCH_TEMPLATE_NAME"></a> [LAUNCH\_TEMPLATE\_NAME](#input\_LAUNCH\_TEMPLATE\_NAME) | n/a | `string` | `"tf-launchtemplate"` | no |
| <a name="input_LD_NAME"></a> [LD\_NAME](#input\_LD\_NAME) | n/a | `string` | `"centos"` | no |
| <a name="input_PATH_TO_PUBLIC_KEY"></a> [PATH\_TO\_PUBLIC\_KEY](#input\_PATH\_TO\_PUBLIC\_KEY) | n/a | `string` | `"levelup_key.pub"` | no |
| <a name="input_PUBLIC_RT_NAME"></a> [PUBLIC\_RT\_NAME](#input\_PUBLIC\_RT\_NAME) | n/a | `string` | `"demo-rt"` | no |
| <a name="input_SUBNET_IPS"></a> [SUBNET\_IPS](#input\_SUBNET\_IPS) | n/a | `list(any)` | <pre>[<br/>  "10.0.1.0/24",<br/>  "10.0.2.0/24",<br/>  "10.0.3.0/24",<br/>  "10.0.4.0/24"<br/>]</pre> | no |
| <a name="input_SUBNET_NAMES"></a> [SUBNET\_NAMES](#input\_SUBNET\_NAMES) | n/a | `list(any)` | <pre>[<br/>  "public-subnet-A",<br/>  "public-subnet-B",<br/>  "private-subnet-A",<br/>  "private-subnet-B"<br/>]</pre> | no |
| <a name="input_VPC_CIDR_BLOCK"></a> [VPC\_CIDR\_BLOCK](#input\_VPC\_CIDR\_BLOCK) | n/a | `string` | `"10.0.0.0/16"` | no |
| <a name="input_VPC_NAME"></a> [VPC\_NAME](#input\_VPC\_NAME) | n/a | `string` | `"demo-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ELB"></a> [ELB](#output\_ELB) | n/a |
<!-- END_TF_DOCS -->