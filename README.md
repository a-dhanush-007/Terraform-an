## ✅ **Terraform EC2 + Ansible Automation Setup — Description**

> This Terraform configuration automates the provisioning and configuration of two EC2 instances in AWS. It uses the default VPC and subnet, sets up a custom security group to allow both SSH (port 22) and HTTP (port 80), and integrates with Ansible to configure the instances after deployment.

### 🔧 Key Features:

* **EC2 Instance Provisioning:**

  * Launches 2 Amazon Linux 2 EC2 instances.
  * Uses an existing key pair (`Key02`) for secure SSH access.

* **VPC & Subnet:**

  * Dynamically fetches the default AWS VPC and its associated subnets.
  * Automatically places the instances in an available subnet.

* **Security Group:**

  * Custom security group allowing:

    * **Port 22 (SSH)**: For remote configuration using Ansible.
    * **Port 80 (HTTP)**: To serve web content (e.g., Apache).

* **Ansible Integration:**

  * After Terraform deploys the infrastructure, it outputs an `inventory.ini` file containing the public IPs and SSH credentials.
  * Ansible is then used to connect and install/configure services (like Apache) on all EC2 instances.

---

## 📦 Technologies Used:

* **Terraform**: For infrastructure as code (IaC)
* **AWS Provider**: To manage EC2, VPC, Subnets, and Security Groups
* **Ansible**: For post-deployment configuration management

---

## 📁 Workflow:

1. Run `terraform apply` to create EC2 instances and security group.
2. Terraform outputs the `inventory.ini` file for Ansible.
3. Run `ansible-playbook` to automatically configure the EC2 instances (e.g., install Apache).
4. Access the web server via the public IP on port 80.

