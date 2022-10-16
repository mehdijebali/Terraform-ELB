# Provision AWS ELB with Terraform
In this Lab, we will apply an Elastic Load balancer that distributes the traffic accross two instances. 
## About ELB 
Elastic Load Balancing automatically distributes your incoming application traffic across all the EC2 instances that you are running. Elastic Load Balancing helps to manage incoming requests by optimally routing traffic so that no one instance is overwhelmed.

To use Elastic Load Balancing with your Auto Scaling group, attach the load balancer to your Auto Scaling group. This registers the group with the load balancer, which acts as a single point of contact for all incoming web traffic to your Auto Scaling group.

When you use Elastic Load Balancing with your Auto Scaling group, it's not necessary to register individual EC2 instances with the load balancer. Instances that are launched by your Auto Scaling group are automatically registered with the load balancer. Likewise, instances that are terminated by your Auto Scaling group are automatically deregistered from the load balancer.

After attaching a load balancer to your Auto Scaling group, you can configure your Auto Scaling group to use Elastic Load Balancing metrics (such as the Application Load Balancer request count per target) to scale the number of instances in the group as demand fluctuates.
## Instructions
1. Clone the project 
```
git clone https://github.com/mehdijebali/Terraform-ELB.git
```
2. In the project root directory, create an SSH key and name it **levelup_key**
```
ssh-keygen
``` 
3. Export your AWS Credentials
```
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=us-west-2
```
4. In the project root directory, initiate Terraform in order to install the declared provider in `provider.tf` file
```
terraform init
```
5. If you want to see your provisionning details, run the following command
```
terraform plan
```
6. Apply modifications
```
terraform apply
```
## Expected Results
Once the provisionning is done, we can verify the AWS ELB implementation frome the console
#### Launch Configuration
![](./Lab_Results/lf.png)
#### ELB
![](./Lab_Results/elb.png)
#### Autoscaler
![](./Lab_Results/instances.png)
#### Security Group
![](./Lab_Results/sg.png)
#### Load Balancing
To test the load balancing, we can send requests multiple times to the load balancer endpoint. At this stage, you should notice that the instance IP has been changed. 
1. First request
![](./Lab_Results/out1.png)
2. Second request
![](./Lab_Results/out2.png)