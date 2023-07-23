#  Infrastructure Provisioning for AWS VPC and EKS Cluster and deploying aspent-mssql app using terraform 

## Overview

 creating AWS Virtual Private Cloud (VPC) with 1 public subnet, 1 private subnet, and 2 route tables. Additionally, it deploys an Amazon Elastic Kubernetes Service (EKS) cluster with multi-container pods consisting of an application and a mongodb and redis.

## Prerequisites

Before you begin, ensure you have the following:

1. AWS CLI installed and configured with appropriate credentials.
2. Terraform CLI installed on your local machine.


## Deployment Steps

1. Clone the project repo to your local machine:

   ```
   git clone <repository-url>
   cd project
   ```

2. Navigate to the `terraform` directory:

   ```
   cd terraform
   ```

3. Initialize Terraform:

   ```
   terraform init
   ```

4. Review and set any required variables in the `terraform.tfvars` file or provide them through command-line flags.

5. Plan the Terraform deployment:

   ```
   terraform plan
   ```

6. Apply the Terraform configuration:

   ```
   terraform apply
   ```

7. After the VPC and EKS cluster have been successfully created, configure `kubectl` to interact with the EKS cluster:

   ```
   aws eks update-kubeconfig --name eks
   ```

8. Verify that you can connect to the EKS cluster:

   ```
   kubectl get nodes
   ```

9. Deploy the multi-container pods with the application and database:

   ```
   kubectl apply -f ../deployment.yaml
   ```



## Infrastructure


![Task](task.png)

## Cleanup
To remove all resources created by Terraform, use the following command:

```
terraform destroy
```

**Note**: Be cautious when running `terraform destroy`, as it will delete all resources created in the AWS account, including the VPC and EKS cluster.

## Conclusion

I have successfully deployed a VPC with public and private subnets, route tables, NAT gateways, and an EKS cluster with multi-container pods for the application and database.
