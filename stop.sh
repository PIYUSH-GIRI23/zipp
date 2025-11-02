#!/bin/bash

echo "🛑 Stopping all ZIPP services..."

# Kill all nodemon processesk
pkill -f nodemon

# Kill all npm dev servers
pkill -f "npm run dev"

# Optional: close extra gnome-terminal windows that were opened by run.sh
# (CAUTION: this will close ALL gnome-terminal windows)
# Uncomment below line if you want that behavior:
# pkill -f gnome-terminal-server

echo "✅ All ZIPP services have been stopped!"

