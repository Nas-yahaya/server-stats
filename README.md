# server-stats.sh

- This script collects and displays server statistics such as CPU, memory, disk usage, and network activity.
https://github.com/Nas-yahaya/server-stats

## Usage
```
sudo apt update
sudo apt install procps
```
```
chmod +x server-stats.sh
```
**What It Does**
- **CPU Usage:** Shows overall CPU usage percentage.
- **Memory Usage:** Displays used, free, and total memory in MB.
- **Disk Usage:** Reports total disk usage percentage.
- **Top Processes:** Lists the top 5 processes by CPU and memory consumption.

### Example Response
```
Collecting server statistics...
CPU Usage: 12.34%
Memory Usage:
Used: 1024 MB, Free: 2048 MB, Total: 4096 MB
Disk Usage is: 45%
Top 5 CPU consuming processes:
...
Top 5 Memory consuming processes:
...
```