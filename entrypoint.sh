#!/bin/sh

set -e

# Read inputs
COMMAND=$1
STDOUT_PATH=$2
STDERR_PATH=$3

# Create directories if they don't exist
mkdir -p "$(dirname "$STDOUT_PATH")"
mkdir -p "$(dirname "$STDERR_PATH")"

# Execute the command and capture logs
echo "Running command: $COMMAND" >> "$STDOUT_PATH"
sh -c "$COMMAND" >> "$STDOUT_PATH" 2>> "$STDERR_PATH" || exit $?
echo "Command completed." >> "$STDOUT_PATH"
