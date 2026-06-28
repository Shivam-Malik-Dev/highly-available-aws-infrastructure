# Troubleshooting Guide

This document contains common issues encountered during deployment and their solutions.

---

# Target Group Unhealthy

Possible Causes

- Nginx is not running
- Health Check Path is incorrect
- Security Group blocks HTTP traffic

Resolution

- Restart Nginx
- Verify Health Check Path (/)
- Verify Security Group configuration

---

# Application Load Balancer Returns 503

Possible Causes

- No Healthy Targets
- Incorrect Listener Configuration

Resolution

Verify:

- Listener
- Target Group
- Health Check
- Registered Targets

---

# Auto Scaling Not Launching New Instances

Possible Causes

- Incorrect Launch Template
- Scaling Policy Misconfiguration
- CloudWatch Alarm not triggering

Resolution

Verify:

- Launch Template
- Auto Scaling Policy
- CloudWatch Alarm

---

# Website Not Accessible

Verify:

- Internet Gateway
- Route Table
- Security Group
- Nginx Service
- Target Group
- ALB Listener

---

# User Data Script Not Executing

Possible Causes

- Syntax Error
- Incorrect Package Commands
- Cloud-init Failure

Resolution

Check:

```bash
sudo cat /var/log/cloud-init-output.log
```

---

# SSH Connection Failed

Possible Causes

- Incorrect Security Group
- Wrong Key Pair
- Instance not Running

Resolution

Verify:

- Port 22
- Key Pair
- Public IP
- Instance State

---

# CloudWatch Alarm Not Triggering

Possible Causes

- CPU Threshold too High
- Stress Test not Running

Resolution

Generate CPU load using:

```bash
stress-ng --cpu 2 --timeout 300s
```

---

# Best Practices

- Use separate Security Groups for ALB and EC2.
- Deploy instances across multiple Availability Zones.
- Keep User Data scripts idempotent.
- Monitor infrastructure using CloudWatch.
- Validate Target Group health before testing.