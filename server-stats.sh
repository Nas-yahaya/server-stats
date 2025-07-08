#!/bin/bash
# Usage: ./server-stats.sh
echo "Collecting server statistics..."
# CPU Usage
chmod +x server-stats.sh
echo "``````````````````````````````````````````````" 
total_cpu=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}' | awk '{printf "CPU Usage: %.2f%%\n", $1}')
echo "$total_cpu"
total_memory=$(free -m | awk '/Mem:/ { print $2 }')
used_memory=$(free -m | awk '/Mem:/ { print $3 }')
free_memory=$(free -m | awk '/Mem:/ { print $4 }')
echo "``````````````````````````````````````````````" 

echo "``````````````````````````````````````````````" 
echo "Memory Usage:"
memory_usage=$(free -m | awk '/Mem:/ { printf "Used: %d MB, Free: %d MB, Total: %d MB\n", $3, $4, $2 }')
echo "$memory_usage"
echo "``````````````````````````````````````````````" 
#Disk Usage
echo "``````````````````````````````````````````````" 
disk_usage=$(df -k --total| awk '/total/{print $5}')
echo "Disk Usage is: $disk_usage"
echo "``````````````````````````````````````````````"

echo "``````````````````````````````````````````````" 
echo "Top 5 CPU consuming processes:"
cpu_top_five_processes=$(ps -aux --sort=-%cpu|awk 'NR>1' | head -5)
echo "$cpu_top_five_processes"\n
echo "``````````````````````````````````````````````" 

echo "``````````````````````````````````````````````" 
echo "Top 5 Memory consuming processes:"
memory_top_five_processes=$(ps -aux --sort=-%mem|awk 'NR>1' | head -5)
echo "$memory_top_five_processes"\n
echo "``````````````````````````````````````````````" 