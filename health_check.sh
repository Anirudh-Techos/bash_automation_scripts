#!/bin/bash

# This script provide daily system health check report.

echo "###############################################"
echo "##        System Health Report               ##"
echo "##       Date: $(date)              ##"
echo "###############################################"
echo ""

echo "========== System Uptime =========="
uptime
echo ""

echo "========== Disk Usage =========="
df -h
echo ""

echo "========== Memory usage (in MB) =========="
free -m
echo ""

echo "========== Currently Logged-in Users =========="
who
echo ""

echo "###############################################"
echo "##              Report End                   ##"
echo "###############################################" 