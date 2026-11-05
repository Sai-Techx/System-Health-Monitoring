# System Health Monitor

A Bash-based System Health Monitoring tool that automates the monitoring of CPU load, memory usage, and disk utilization on Linux and macOS systems.

This project collects system resource metrics, compares them against configurable thresholds, generates alerts when resource usage exceeds the defined limits, and maintains logs for system health analysis. It also supports optional Slack notifications and automatic cleanup of old log files.

The script demonstrates practical Linux fundamentals, advanced shell scripting, system monitoring, logging, error handling, and automation using cron.

# **Features**

- CPU Monitoring: Monitors CPU load and compares it against a configurable threshold.
- Memory Monitoring: Checks memory usage and generates alerts when it exceeds the limit.
- Disk Monitoring: Tracks root filesystem disk utilization.
- Threshold-Based Alerts: Generates alerts when resource usage exceeds configured limits.
- Logging: Records system health information with timestamps and log levels.
- Slack Notifications: Optionally sends alerts through a Slack webhook.
- Automatic Log Cleanup: Deletes old log files based on a configurable retention period.
- Error Handling: Uses Bash safety options and an EXIT trap to handle script failures.
- Cron Automation: Supports scheduled execution for periodic monitoring.
- Cross-Platform Support: Includes separate metric collection logic for Linux and macOS.

# **Technologies Used**

- Bash Shell Scripting
- Linux System Utilities
- AWK
- df,free,find,curl
- Cron
- Slack Webhooks

# **Project Objective**

The main objective of this project is to develop a lightweight system monitoring tool using Bash scripting that helps identify high resource utilization, generate alerts, maintain logs, and automate routine system administration tasks.

This project was developed as a practical learning capstone to strengthen my understanding of Linux fundamentals, shell scripting, and DevOps automation.

# **Configuration**

The monitoring thresholds and log retention period can be customized using environment variables.

|Variable | Default Value | Description |
|"CPU_MAX" | 80 | "Maximum CPU Load Percentage |
|"MEM_MAX" | 80 | "Maximum memory usage percentage" |
| "DISK_MAX" | 80 | "Maximum disk usage percentage" |
| "RETAIN_DAYS" | 7 | "Log retention period in days" |
| "LOGFILE" | 'Daily log file' | "Location of the log file" |
| "SLACK_WEBHOOK_URL" | 'Empty' | "Optional Slack Webhook URL" |

# **How to Run**

Clone the repository:
git clone <repository-url>

Navigate to the project directory:
cd system-health-monitor

Make the script executable:
chmod +x health-monitor.sh

Run the monitoring script:
./health-monitor.sh

# **Example Output**

```text
[INFO] ----- health check start -----
[INFO] CPU ok at 50%
[ERROR] ALERT: MEM at 90% (limit 80%)
[INFO] DISK ok at 75%
[INFO] pruned logs older than 7 days
[INFO] ----- health check done -----
```

*Note: The example output is illustrative. Actual values depend on system resource usage.*

# **Learning Outcomes**

- Understanding Bash functions and variables
- Working with conditional statements and numeric comparisons
- Using pipelines, AWK, and command substitution
- Implementing logging and error handling
- Monitoring system resources using Linux commands
- Automating maintenance tasks with `find`
- Understanding cron-based scheduling
- Integrating external notifications using Slack webhooks

# **Future Improvements**

- Implement more accurate CPU utilization measurements.
- Add email notifications.
- Generate system health reports.
- Improve monitoring accuracy for memory usage.
- Add configurable monitoring intervals.

# Author
**Sai Patil**
