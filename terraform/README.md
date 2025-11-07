<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_cloudinit"></a> [cloudinit](#requirement\_cloudinit) | ~> 2.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |
| <a name="provider_cloudinit"></a> [cloudinit](#provider\_cloudinit) | 2.3.7 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | github.com/mehdijebali/terraform-modules//network | v1.0.1 |
| <a name="module_ssm-role"></a> [ssm-role](#module\_ssm-role) | github.com/mehdijebali/terraform-modules//ssm-role | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.levelup-autoscaling](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_elb.tf-elb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb) | resource |
| [aws_launch_template.tf-launchtemplate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_security_group.elb-securitygroup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.instance-securitygroup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.packer_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [cloudinit_config.elb_instance_userdata](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs/data-sources/config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AUTOSCALING_GROUP_MAX_SIZE"></a> [AUTOSCALING\_GROUP\_MAX\_SIZE](#input\_AUTOSCALING\_GROUP\_MAX\_SIZE) | Auto-Scaling Maximum EC2 Instances number | `number` | `2` | no |
| <a name="input_AUTOSCALING_GROUP_MIN_SIZE"></a> [AUTOSCALING\_GROUP\_MIN\_SIZE](#input\_AUTOSCALING\_GROUP\_MIN\_SIZE) | Auto-Scaling Minimum EC2 Instances number | `number` | `2` | no |
| <a name="input_AUTOSCALING_GROUP_NAME"></a> [AUTOSCALING\_GROUP\_NAME](#input\_AUTOSCALING\_GROUP\_NAME) | Auto Scaling Group name | `string` | `"tf-autoscaling"` | no |
| <a name="input_AVAILABILITY_ZONES"></a> [AVAILABILITY\_ZONES](#input\_AVAILABILITY\_ZONES) | List of AZ where instances are deployed | `list(any)` | <pre>[<br/>  "us-east-1a",<br/>  "us-east-1b"<br/>]</pre> | no |
| <a name="input_AWS_REGION"></a> [AWS\_REGION](#input\_AWS\_REGION) | The region where resources are deployed | `string` | `"us-east-1"` | no |
| <a name="input_ELB_SG_DESCRIPTION"></a> [ELB\_SG\_DESCRIPTION](#input\_ELB\_SG\_DESCRIPTION) | Load Balancer Security Group Description | `string` | `"security group for Elastic Load Balancer"` | no |
| <a name="input_GW_NAME"></a> [GW\_NAME](#input\_GW\_NAME) | VPC Internet Gatewey name | `string` | `"demo-gw"` | no |
| <a name="input_HEALTH_CHECK_GRACE_PERIOD"></a> [HEALTH\_CHECK\_GRACE\_PERIOD](#input\_HEALTH\_CHECK\_GRACE\_PERIOD) | Health Check Period in seconds | `number` | `200` | no |
| <a name="input_HEALTH_CHECK_TYPE"></a> [HEALTH\_CHECK\_TYPE](#input\_HEALTH\_CHECK\_TYPE) | Health Check Type | `string` | `"ELB"` | no |
| <a name="input_INSTANCE_SG_DESCRIPTION"></a> [INSTANCE\_SG\_DESCRIPTION](#input\_INSTANCE\_SG\_DESCRIPTION) | Instance Security Group Description | `string` | `"security group for instances"` | no |
| <a name="input_INSTANCE_TYPE"></a> [INSTANCE\_TYPE](#input\_INSTANCE\_TYPE) | AWS Instance type | `string` | `"t2.micro"` | no |
| <a name="input_LAUNCH_TEMPLATE_NAME"></a> [LAUNCH\_TEMPLATE\_NAME](#input\_LAUNCH\_TEMPLATE\_NAME) | Launch Template Name | `string` | `"tf-launchtemplate"` | no |
| <a name="input_LD_NAME"></a> [LD\_NAME](#input\_LD\_NAME) | Linux Distribution | `string` | `"centos"` | no |
| <a name="input_PUBLIC_RT_NAME"></a> [PUBLIC\_RT\_NAME](#input\_PUBLIC\_RT\_NAME) | Subnet Route table name | `string` | `"demo-rt"` | no |
| <a name="input_SUBNET_IPS"></a> [SUBNET\_IPS](#input\_SUBNET\_IPS) | List of subnets IPs | `list(any)` | <pre>[<br/>  "10.0.1.0/24",<br/>  "10.0.2.0/24",<br/>  "10.0.3.0/24",<br/>  "10.0.4.0/24"<br/>]</pre> | no |
| <a name="input_SUBNET_NAMES"></a> [SUBNET\_NAMES](#input\_SUBNET\_NAMES) | List of subnets names | `list(any)` | <pre>[<br/>  "public-subnet-A",<br/>  "public-subnet-B",<br/>  "private-subnet-A",<br/>  "private-subnet-B"<br/>]</pre> | no |
| <a name="input_VPC_CIDR_BLOCK"></a> [VPC\_CIDR\_BLOCK](#input\_VPC\_CIDR\_BLOCK) | VPC CIDR Block | `string` | `"10.0.0.0/16"` | no |
| <a name="input_VPC_NAME"></a> [VPC\_NAME](#input\_VPC\_NAME) | VPC Name | `string` | `"demo-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ELB"></a> [ELB](#output\_ELB) | n/a |
<!-- END_TF_DOCS -->