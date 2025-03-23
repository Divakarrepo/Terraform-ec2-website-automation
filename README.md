# Terraform EC2 Website Automation

## Overview
This project automates the provisioning of an **AWS EC2 instance** and the deployment of a **website** using **Terraform**. It follows Infrastructure as Code (IaC) principles to ensure a consistent and repeatable deployment process.

## Architecture
1. **Terraform** - Used for infrastructure provisioning.
2. **AWS EC2** - Virtual machine to host the website.
3. **AWS Security Groups** - Configured to allow necessary traffic.
4. **User Data Script** - Automates web server setup during instance launch.
5. **S3 (Optional)** - Can be used for static content storage.

## Prerequisites
- **AWS Account** with IAM permissions to create EC2 instances and security groups.
- **Terraform** installed on your local machine.
- **SSH Key Pair** for secure access to the EC2 instance.

---

## Step 1: Install Terraform
1. Download and install **Terraform** from [terraform.io](https://www.terraform.io/downloads.html).
2. Verify installation:
   ```sh
   terraform -v
   ```

---

## Step 2: Clone the Repository
1. Clone this GitHub repository:
   ```sh
   git clone https://github.com/Divakarrepo/terraform-ec2-website-automation.git
   cd Terraform-ec2-website-automation
   ```

---

## Step 3: Initialize and Apply Terraform
1. Initialize Terraform:
   ```sh
   terraform init
   ```
2. Preview the execution plan:
   ```sh
   terraform plan
   ```
3. Apply the configuration:
   ```sh
   terraform apply -auto-approve
   ```
4. Terraform will create the EC2 instance and output the public IP address.

---

## Step 4: Access the Website
1. Open a web browser and enter the **public IP** of the EC2 instance.
2. The deployed website should be accessible.

---

## Step 5: Destroy the Infrastructure (Optional)
If you want to delete the resources, run:
```sh
terraform destroy -auto-approve
```

---

## Monitoring and Logging
- Use **CloudWatch** for monitoring instance health.
- Configure **CloudTrail** for auditing API calls.

## Conclusion
This project automates the provisioning of an AWS EC2 instance and deploys a website using Terraform. It ensures efficiency, repeatability, and scalability in cloud infrastructure management.

---


