#!/bin/bash

# Publish konfekt website to foadell server
# This script copies all necessary files to the remote server

REMOTE_HOST="foadell"
REMOTE_PATH="/home/fmadsen/www_root/domains/konfekt"

echo "Publishing to ${REMOTE_HOST}:${REMOTE_PATH}..."

# Copy index.html
scp index.html ${REMOTE_HOST}:${REMOTE_PATH}/

# Copy css directory
scp -r css ${REMOTE_HOST}:${REMOTE_PATH}/

# Copy js directory
scp -r js ${REMOTE_HOST}:${REMOTE_PATH}/

# Copy images directory
scp -r images ${REMOTE_HOST}:${REMOTE_PATH}/

echo "Done! Website published successfully."
