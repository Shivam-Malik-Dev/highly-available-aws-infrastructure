# Architecture Overview

## Project Objective

The objective of this project is to build a highly available and fault-tolerant AWS infrastructure capable of serving web traffic reliably across multiple Availability Zones using Auto Scaling and an Application Load Balancer.

The infrastructure automatically distributes incoming traffic, replaces unhealthy instances, and scales resources based on CPU utilization.

---

# Architecture Components

The infrastructure consists of the following AWS services:

- Amazon VPC
- Public Subnet A
- Public Subnet B
- Internet Gateway
- Route Table
- Security Group
- Launch Template
- Auto Scaling Group
- Application Load Balancer
- Target Group
- Amazon EC2 (Ubuntu)
- Nginx Web Server
- CloudWatch Alarm
- Amazon SNS

---

# Traffic Flow

```text
Internet
      │
      ▼
Application Load Balancer
      │
      ▼
Target Group
      │
      ▼
Auto Scaling Group
      │
      ▼
EC2 Instances (Ubuntu + Nginx)
```

---

# High Availability Design

The infrastructure is deployed across two Availability Zones to eliminate a single point of failure.

If one instance becomes unhealthy, the Application Load Balancer automatically stops routing traffic to it while the Auto Scaling Group launches a replacement instance.

---

# Auto Scaling Workflow

1. CloudWatch continuously monitors CPU utilization.
2. When CPU exceeds the configured threshold, CloudWatch triggers the scaling policy.
3. Auto Scaling launches a new EC2 instance using the Launch Template.
4. The new instance automatically installs and configures Nginx through User Data.
5. After passing health checks, the instance is registered with the Target Group.
6. The Application Load Balancer begins routing traffic to the new instance.

---

# Load Balancing Strategy

The Application Load Balancer distributes incoming HTTP requests across healthy EC2 instances.

This improves:

- Availability
- Fault Tolerance
- Scalability
- Reliability

---

# Fault Tolerance

The infrastructure can recover automatically from:

- EC2 Instance Failure
- High CPU Utilization
- Instance Termination
- Health Check Failure

without requiring manual intervention.

---

# Architecture Diagram

Refer to:

architecture/architecture-diagram.png