# 🚀 Highly Available AWS Infrastructure with Auto Scaling & Application Load Balancer

<p align="center">

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazonaws)
![EC2](https://img.shields.io/badge/Amazon-EC2-FF9900?style=for-the-badge&logo=amazonaws)
![ALB](https://img.shields.io/badge/Application_Load_Balancer-Enabled-blue?style=for-the-badge)
![Auto Scaling](https://img.shields.io/badge/Auto_Scaling-Configured-success?style=for-the-badge)
![CloudWatch](https://img.shields.io/badge/CloudWatch-Monitoring-red?style=for-the-badge)
![SNS](https://img.shields.io/badge/SNS-Notifications-yellow?style=for-the-badge)
![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04-E95420?style=for-the-badge&logo=ubuntu)
![Nginx](https://img.shields.io/badge/Nginx-Web_Server-009639?style=for-the-badge&logo=nginx)
![License](https://img.shields.io/badge/License-MIT-brightgreen?style=for-the-badge)

</p>

---

## 📖 Table of Contents

- [Project Overview](#-project-overview)
- [Project Objectives](#-project-objectives)
- [Key Features](#-key-features)
- [Architecture Diagram](#-architecture-diagram)
- [AWS Services Used](#-aws-services-used)
- [Project Structure](#-project-structure)
- [Deployment Workflow](#-deployment-workflow)
- [Project Screenshots](#-project-screenshots)
- [Documentation](#-documentation)
- [Skills Demonstrated](#-skills-demonstrated)
- [Future Improvements](#-future-improvements)
- [License](#-license)
- [Author](#-author)

---

# 📌 Project Overview

Modern production applications must remain available even when servers fail or traffic suddenly increases.

This project demonstrates how to build a **Highly Available**, **Fault-Tolerant**, and **Scalable AWS Infrastructure** using core AWS services such as **Application Load Balancer**, **Auto Scaling Group**, **Amazon EC2**, **CloudWatch**, and **Amazon SNS**.

The infrastructure automatically distributes incoming traffic across multiple EC2 instances, continuously monitors application health, replaces unhealthy instances without manual intervention, and scales compute resources based on workload.

The web application is deployed on **Ubuntu EC2 instances** running **Nginx**, provisioned automatically through **EC2 User Data**, making the deployment repeatable and production-oriented.

This project simulates a real-world cloud architecture commonly used for hosting scalable web applications on AWS.

---

# 🎯 Project Objectives

- Build a Highly Available Infrastructure
- Eliminate Single Point of Failure
- Automatically Scale Infrastructure
- Improve Fault Tolerance
- Automatically Replace Failed Instances
- Implement Load Balancing
- Monitor Infrastructure Health
- Receive Operational Notifications
- Follow AWS Best Practices
- Demonstrate Production-Ready Infrastructure Design

---

# ⭐ Key Features

- Highly Available AWS Architecture
- Multi Availability Zone Deployment
- Application Load Balancer
- Auto Scaling Group
- Launch Template
- Ubuntu EC2 Instances
- Nginx Web Server
- Automated EC2 Provisioning using User Data
- CloudWatch Monitoring
- Amazon SNS Notifications
- Automatic Instance Recovery
- Health Checks
- Production-Oriented Infrastructure
- Fault Tolerant Design
- Scalable Architecture

---

# 🏗️ Architecture Diagram

<p align="center">

<img src="architecture/architecture-diagram.png" width="100%">

</p>

---

# ☁️ AWS Services Used

| Service | Purpose |
|----------|----------|
| Amazon EC2 | Hosts the web application |
| Application Load Balancer | Distributes incoming traffic |
| Auto Scaling Group | Automatically scales and replaces EC2 instances |
| Launch Template | Defines EC2 launch configuration |
| Amazon VPC | Provides isolated networking |
| Public Subnets | Deploy EC2 instances across Availability Zones |
| Internet Gateway | Enables internet connectivity |
| Route Tables | Routes internet traffic |
| Security Groups | Controls inbound and outbound traffic |
| CloudWatch | Monitors infrastructure health |
| Amazon SNS | Sends email notifications |
| IAM | Provides secure service permissions |

---

# 📂 Project Structure

```text
highly-available-aws-infrastructure
│
├── architecture/
│   ├── architecture-diagram.drawio
│   └── architecture-diagram.png
│
├── docs/
│   ├── architecture.md
│   ├── deployment-guide.md
│   ├── testing-validation.md
│   └── troubleshooting.md
│
├── screenshots/
│
├── scripts/
│   └── user-data.sh
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# 🚀 Deployment Workflow

The infrastructure was deployed in the following sequence:

```text
Create VPC
      │
      ▼
Create Public Subnets
      │
      ▼
Attach Internet Gateway
      │
      ▼
Configure Route Table
      │
      ▼
Create Security Groups
      │
      ▼
Launch Ubuntu EC2
      │
      ▼
Configure User Data (Nginx)
      │
      ▼
Create Launch Template
      │
      ▼
Create Target Group
      │
      ▼
Create Application Load Balancer
      │
      ▼
Create Auto Scaling Group
      │
      ▼
Configure CloudWatch Alarm
      │
      ▼
Configure Amazon SNS
      │
      ▼
Validate Infrastructure
```

> 📖 **Detailed deployment steps are available in:**  
> `docs/deployment-guide.md`

---

# 📸 Project Screenshots

The following screenshots demonstrate the complete deployment process.

| Step | Screenshot |
|------|------------|
| Custom VPC | `screenshots/01-vpc.png` |
| Public Subnets | `screenshots/02-public-subnets.png` |
| Route Table | `screenshots/03-route-table.png` |
| Internet Gateway | `screenshots/04-internet-gateway.png` |
| Security Group | `screenshots/05-security-group.png` |
| Launch Template | `screenshots/06-launch-template.png` |
| Auto Scaling Group | `screenshots/07-auto-scaling-group.png` |
| Application Load Balancer | `screenshots/08-load-balancer.png` |
| Target Group | `screenshots/09-target-group.png` |
| Health Checks | `screenshots/10-health-check.png` |
| CloudWatch Alarm | `screenshots/11-cloudwatch-alarm.png` |
| Amazon SNS | `screenshots/12-sns-topic.png` |
| Final Output | `screenshots/13-final-output.png` |
| Instance Switching | `screenshots/14-instance-switching.png` |

---
# 📚 Documentation

Detailed project documentation has been organized into separate documents for better readability and maintenance.

| Document | Description |
|----------|-------------|
| `docs/architecture.md` | Complete infrastructure architecture and design explanation |
| `docs/deployment-guide.md` | Step-by-step deployment guide |
| `docs/testing-validation.md` | Infrastructure testing and validation results |
| `docs/troubleshooting.md` | Common issues and troubleshooting guide |

---

# 🧪 Testing Summary

The deployed infrastructure was validated using multiple functional and operational tests.

| Test | Status |
|------|--------|
| Website Accessibility | ✅ Passed |
| Application Load Balancer | ✅ Passed |
| Target Group Health Checks | ✅ Passed |
| Auto Scaling | ✅ Passed |
| Instance Replacement | ✅ Passed |
| CloudWatch Monitoring | ✅ Passed |
| SNS Notifications | ✅ Passed |
| Nginx Deployment | ✅ Passed |

> 📖 Detailed testing procedure and validation results are available in:

```
docs/testing-validation.md
```

---

# ⚙️ Auto Scaling Demonstration

Auto Scaling behavior was validated by generating CPU load on the running EC2 instance.

```bash
stress-ng --cpu 2 --timeout 300s
```

During testing:

- CloudWatch detected increased CPU utilization.
- Alarm entered the **ALARM** state.
- Auto Scaling Group launched additional EC2 instances.
- Newly launched instances automatically executed the User Data script.
- Nginx was installed automatically.
- Instances were registered with the Target Group.
- The Application Load Balancer started routing traffic to the new healthy instances.

This demonstrates a production-style automatic scaling workflow without manual intervention.

---

# ❤️ High Availability Validation

The infrastructure was designed to eliminate a single point of failure.

Validation included:

- Multi Availability Zone deployment
- Automatic traffic distribution
- Automatic unhealthy instance replacement
- Load balancing across healthy targets
- Continuous health monitoring
- Automatic scaling based on workload

The application remained available throughout testing.

---

# 🔒 Security Considerations

The project follows several AWS security best practices.

- Security Groups used to control network access
- IAM used for secure service permissions
- Launch Template used for standardized deployments
- Health Checks configured through Target Group
- Infrastructure isolated within a custom Amazon VPC
- Internet access controlled through Internet Gateway and Route Tables

> Future enhancements such as HTTPS, ACM certificates and WAF can further improve the security posture.

---

# 💡 Challenges Faced

During implementation, several real-world deployment challenges were encountered and resolved.

- Configuring Application Load Balancer correctly
- Registering healthy targets
- Auto Scaling policy validation
- CloudWatch Alarm configuration
- User Data automation
- Instance metadata retrieval using IMDSv2
- Security Group configuration
- Target Group health check troubleshooting

Resolving these issues significantly improved understanding of AWS networking and infrastructure behavior.

> 📖 Complete troubleshooting details are available in:

```
docs/troubleshooting.md
```

---

# 🎯 Skills Demonstrated

This project demonstrates practical experience with:

### AWS

- Amazon EC2
- Amazon VPC
- Internet Gateway
- Route Tables
- Security Groups
- Launch Templates
- Application Load Balancer
- Target Groups
- Auto Scaling Group
- CloudWatch
- Amazon SNS
- IAM

### Linux

- Ubuntu Server
- Package Management
- Service Management
- User Data Automation

### Web Server

- Nginx

### Networking

- Load Balancing
- High Availability
- Health Checks
- Fault Tolerance

### DevOps

- Infrastructure Design
- Infrastructure Automation
- Monitoring
- Troubleshooting
- Documentation
- Production Deployment Practices

---

# 📈 Key Learnings

Through this project I gained practical experience in:

- Designing Highly Available AWS Infrastructure
- Building fault-tolerant cloud architectures
- Deploying scalable applications
- Implementing Auto Scaling strategies
- Configuring Application Load Balancers
- Monitoring infrastructure using CloudWatch
- Sending operational alerts using Amazon SNS
- Automating EC2 provisioning using User Data
- Understanding production deployment workflows
- Troubleshooting real AWS infrastructure issues

---

# 🚀 Future Improvements

Potential future enhancements include:

- HTTPS using AWS Certificate Manager (ACM)
- Route 53 Domain Integration
- AWS WAF
- Terraform Infrastructure as Code
- Jenkins CI/CD Pipeline
- Docker Containerization
- Amazon ECS / Kubernetes Deployment
- CloudFront CDN
- AWS Systems Manager (SSM)
- Centralized Logging
- Infrastructure Monitoring Dashboard using Grafana
- Blue/Green Deployment Strategy

---

# 🤝 Contributing

Contributions, improvements and suggestions are welcome.

If you have ideas to improve this project, feel free to fork the repository and submit a pull request.

---

# 📄 License

This project is licensed under the **MIT License**.

See the `LICENSE` file for more information.

---

# 👨‍💻 Author

**Shivam Malik**

Cloud & DevOps Engineer

GitHub: **https://github.com/YOUR_USERNAME**

LinkedIn: **https://linkedin.com/in/YOUR_PROFILE**

---

# ⭐ Support

If you found this project helpful, consider giving it a **Star ⭐** on GitHub.

It motivates me to build and share more production-ready Cloud & DevOps projects.

---

<p align="center">

⭐ Thank you for visiting this repository! ⭐

</p>