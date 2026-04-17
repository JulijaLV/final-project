#!/bin/bash

set -e  # stop script on any error

echo "Running tests..."

# 1. Check if file exists
if [ ! -f index.html ]; then
  echo "ERROR: index.html not found"
  exit 1
fi

# 2. Check if file is not empty
if [ ! -s index.html ]; then
  echo "ERROR: index.html is empty"
  exit 1
fi

# 3. Check required content
if ! grep -q "My Final Project" index.html; then
  echo "ERROR: Missing main header"
  exit 1
fi

if ! grep -q "Author:" index.html; then
  echo "ERROR: Missing author line"
  exit 1
fi

echo "All tests passed ✅"
exit 0