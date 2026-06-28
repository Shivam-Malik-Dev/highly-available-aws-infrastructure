# Deployment Guide

## Prerequisites

Before deploying this project, ensure the following requirements are met:

- AWS Account
- IAM User with required permissions
- EC2 Key Pair
- Ubuntu AMI
- Basic AWS Networking Knowledge

---

# Deployment Steps

## Step 1

Create a custom VPC.

---

## Step 2

Create two Public Subnets in different Availability Zones.

---

## Step 3

Create and attach an Internet Gateway.

---

## Step 4

Create a Route Table and associate both Public Subnets.

---

## Step 5

Create a Security Group allowing:

- HTTP (80)
- SSH (22)

---

## Step 6

Launch an Ubuntu EC2 instance.

---

## Step 7

Configure User Data to automatically:

- Update packages
- Install Nginx
- Start Nginx
- Generate the web page

---

## Step 8

Create a Launch Template.

---

## Step 9

Create a Target Group.

Health Check Path:

```
/
```

---

## Step 10

Create an Application Load Balancer.

Configure:

- Internet Facing
- HTTP Listener
- Target Group

---

## Step 11

Create an Auto Scaling Group.

Configuration:

- Desired Capacity: 2
- Minimum Capacity: 2
- Maximum Capacity: 4

---

## Step 12

Create a CloudWatch Alarm.

Trigger:

CPU Utilization > 70%

---

## Step 13

Configure Amazon SNS.

Subscribe an email endpoint to receive Auto Scaling notifications.

---

# Deployment Validation

Verify the following:

- Website accessible through ALB DNS
- Target Group status is Healthy
- Auto Scaling Group is Active
- CloudWatch Alarm is Functional
- SNS Notifications are Received

Deployment is now complete.