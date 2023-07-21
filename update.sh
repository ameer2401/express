#!/bin/bash

# Exit the script if any command fails
set -e

# Step 1: Install dependencies
echo "Installing dependencies..."
npm install

# Step 2: Run tests (if you have tests)
echo "Running tests..."
npm test

# Step 3: Build the app
echo "Building the app..."
node index.js

# Step 4: Restart the server (if necessary)
echo "Restarting the server..."
pm2 restart index.js # Replace "app.js" with the entry point of your app

echo "App update completed successfully!"

