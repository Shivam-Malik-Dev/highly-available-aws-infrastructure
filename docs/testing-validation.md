# Testing & Validation

This document describes the testing performed to validate the infrastructure.

---

# Test 1

## Website Accessibility

Objective

Verify that the website is accessible through the Application Load Balancer.

Expected Result

Website loads successfully.

Status

Passed

---

# Test 2

## Target Group Health Check

Objective

Verify that all registered targets are healthy.

Expected Result

All targets show Healthy status.

Status

Passed

---

# Test 3

## Load Balancer Validation

Objective

Verify traffic distribution.

Method

Refresh the ALB DNS multiple times.

Expected Result

Requests are served by different EC2 instances.

Status

Passed

---

# Test 4

## Auto Scaling Validation

Objective

Verify automatic scaling.

Method

Generate CPU load.

Command

```bash
stress-ng --cpu 2 --timeout 300s
```

Expected Result

CloudWatch Alarm enters ALARM state.

Auto Scaling launches additional EC2 instances.

Status

Passed

---

# Test 5

## Instance Recovery

Objective

Verify self-healing capability.

Method

Terminate one EC2 instance manually.

Expected Result

Auto Scaling launches a replacement instance automatically.

Status

Passed

---

# Test 6

## Nginx Validation

Objective

Verify web server availability.

Expected Result

Nginx serves the web application without interruption.

Status

Passed

---

# Test Summary

| Test | Result |
|-------|--------|
| Website Accessibility | Passed |
| Health Check | Passed |
| Load Balancing | Passed |
| Auto Scaling | Passed |
| Instance Recovery | Passed |
| Nginx Deployment | Passed |

Overall Result

Infrastructure successfully achieved High Availability and Automatic Recovery.