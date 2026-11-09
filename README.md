# 🚀 AWS Highly Available Web Infrastructure using Terraform

This project provisions a **highly available web infrastructure on AWS using Terraform**.  
It demonstrates how **Infrastructure as Code (IaC)** can be used to automate the creation of cloud resources in a scalable and repeatable way.

---

# 📌 Architecture Overview

The infrastructure includes:

- Custom **VPC**
- **Two Public Subnets** in different Availability Zones
- **Internet Gateway**
- **Route Table** for internet access
- **Application Load Balancer (ALB)**
- **Target Group with Health Checks**
- **Two EC2 Web Servers**
- **Security Group**
- **S3 Bucket**

Traffic is distributed between two EC2 instances using an **Application Load Balancer**, ensuring **high availability**.

---

# 🏗 Architecture Diagram

```
                Internet
                   │
                   │
            ┌──────────────┐
            │ Internet     │
            │ Gateway      │
            └──────┬───────┘
                   │
            ┌──────────────┐
            │ Application  │
            │ Load Balancer│
            └──────┬───────┘
                   │
        ┌──────────┴──────────┐
        │                     │
   ┌──────────────┐     ┌──────────────┐
   │ PublicSubnet1│     │ PublicSubnet2│
   │  us-east-1a  │     │  us-east-1b  │
   └──────┬───────┘     └──────┬───────┘
          │                    │
   ┌──────────────┐     ┌──────────────┐
   │ EC2 Instance │     │ EC2 Instance │
   │ WebServer-1  │     │ WebServer-2  │
   └──────────────┘     └──────────────┘
```

---

# ⚙️ Technologies Used

- **Terraform**
- **AWS EC2**
- **AWS VPC**
- **AWS Application Load Balancer**
- **AWS S3**
- **Amazon Linux 2**
- **Apache HTTP Server**

---

# 📂 Project Structure

```
terraform-aws-web-project/
│
├── provider.tf
├── variables.tf
├── vpc.tf
├── subnet.tf
├── route-table.tf
├── security-group.tf
├── ec2.tf
├── load-balancer.tf
├── s3.tf
├── outputs.tf
│
├── userdata1.sh
└── userdata2.sh
```

---

# 🔧 Features

✔ Infrastructure fully managed using **Terraform**  
✔ **High availability** using multiple Availability Zones  
✔ **Application Load Balancer** for traffic distribution  
✔ **Automated server configuration** with user data scripts  
✔ **Reusable and version-controlled infrastructure**

---

# 🚀 Deployment Steps

### 1️⃣ Clone the repository

```bash
git clone https://github.com/your-username/terraform-aws-web-project.git

cd terraform-aws-web-project
```

---

### 2️⃣ Initialize Terraform

```bash
terraform init
```

---

### 3️⃣ Review Execution Plan

```bash
terraform plan
```

---

### 4️⃣ Deploy Infrastructure

```bash
terraform apply
```

---

### 5️⃣ Destroy Infrastructure (Optional)

```bash
terraform destroy
```

---

# 📊 Outputs

After deployment, Terraform will provide:

- VPC ID
- Subnet IDs
- EC2 Public IPs
- Load Balancer DNS
- Target Group ARN
- Listener ARN
- S3 Bucket Name

---

# 💡 Learning Outcomes

This project helped in understanding:

- Infrastructure as Code with **Terraform**
- AWS networking components (VPC, Subnets, Route Tables)
- **Application Load Balancer configuration**
- **High availability architecture**
- Automated server provisioning using **user data**

---

# 📌 Future Improvements

- Add **Auto Scaling Group**
- Implement **Private Subnets + NAT Gateway**
- Add **CloudWatch Monitoring**
- Implement **CI/CD pipeline (GitHub Actions / Jenkins)**
- Add **Terraform modules**

---

# 👨‍💻 Author

**Shobhit**  
DevOps Enthusiast | Cloud Learner | Terraform Practitioner

---

# ⭐ If you found this project useful

Please consider giving it a **star on GitHub** ⭐
