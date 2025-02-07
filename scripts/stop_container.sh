#!/bin/bash
set -e

# Stop the running container (if any)
echo "Hi"

# Unused variable (SonarQube should flag this)
UNUSED_VAR="This variable is never used"

# Bad practice: Useless use of 'echo'
echo $(ls)   # Instead of 'ls' directly, useless use of 'echo'

# Security issue: Command substitution without quotes (may cause word splitting)
FILENAME=$(ls /tmp)  # This can break if filenames have spaces

echo "File in /tmp: $FILENAME"   # Issue: Unquoted variable expansion
