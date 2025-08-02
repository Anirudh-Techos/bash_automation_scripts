#!/bin/bash

# This script creates a compressed backup of a specified directory.

#--- Configuration ---
# Define the directory you want to backup.
# Important: Change this to a real directory on your system, like /home/cachy/Documents
SOURCE_DIR="/home/cachy/Documents"

# Define where you want to store the backups.
<<<<<<< HEAD
# This directory must exist.Create it in your home folder.
||||||| parent of 86a21e8 (grammer mistake solves)
# This directory must exist. Create it in your home folder.
=======
# This directory must exist. Create it in your home folder.
>>>>>>> 86a21e8 (grammer mistake solves)
DEST_DIR="/home/cachy/Backups"

# --- Script Logic ---

# Create the destination directory if it doesn't exist.
# The -p flag ensures it doesn't show an error if the directory already exists.
mkdir -p "$DEST_DIR"

# Create a timestamped filename for the backup.
# Format: backup_YYYY-MM-DD-HH-MM-SS.tar.gz
TIMESTAMP=$(date "+%Y-%m-%d_%H-%M-%S")
BACKUP_FILENAME="backup_$TIMESTAMP.tar.gz"

# Create the full path for the backup file
DEST_FILE="$DEST_DIR/$BACKUP_FILENAME"

echo "======================================="
echo "Starting Backup..."
echo "Source: $SOURCE_DIR"
echo "Destination: $DEST_FILE"
echo "======================================="

# The core backup commmand
# 'tar' is used to create the archive.
# Options:
# -c : create an archive 
# -z : compress with gzip
# -p : preserve permissions
# -f : specify the output file
tar -czpf "$DEST_FILE" "$SOURCE_DIR"

# --- Verification ---
# Check the exit code of the last common ($?). 0 means success.
if [ $? -eq 0 ]; then 
  echo ""
  echo "Backup successful"
  echo "Archive created at: $DEST_FILE"
  # Optionally, list the contents of the destination directory to show the new file.
  ls -lh "$DEST_DIR"
else 
  echo ""
  echo "!!! BACKUP FAILED !!!"
  echo "An error occurred during the tar command."
fi

echo "============================================"
