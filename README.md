# Bash Automation Scripts

A collection of useful Bash scripts for system administration and automation, created as part of my DevOps/SRE learning journey.

---

## 🚀 Scripts

This repository currently contains the following scripts:

### 1. `health_check.sh`

*   **Purpose:** Generates a daily health report for a Linux system.
*   **Features:**
    *   Displays current system uptime and load average.
    *   Shows a summary of disk space usage across all filesystems.
    *   Reports current memory (RAM and Swap) usage.
    *   Lists all currently logged-in users.
*   **Usage:**
    ```bash
    ./health_check.sh
    ```

### 2. `backup.sh`

*   **Purpose:** Creates a compressed, timestamped backup of a specified directory.
*   **Features:**
    *   Easily configurable source and destination directories.
    *   Creates a unique `.tar.gz` archive with a `YYYY-MM-DD_HH-MM-SS` timestamp.
    *   Verifies if the backup was successful and reports the status.
*   **Usage:**
    1.  Open the script and modify the `SOURCE_DIR` and `DEST_DIR` variables.
    2.  Make the script executable: `chmod +x backup.sh`
    3.  Run the script:
        ```bash
        ./backup.sh
        ```

---

## 🛠️ My Tech Stack & Learning Goals

This project is helping me master the following core competencies:

*   **Linux/OS:** Advanced command-line usage and system administration.
*   **Scripting:** Writing robust, reusable Bash scripts with error handling.
*   **Version Control:** Professional Git workflow (commits, branches, remotes).
*   **CI/CD & Automation:** The foundational principles of automating repetitive tasks.
