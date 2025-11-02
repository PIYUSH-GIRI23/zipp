#!/bin/bash

echo "🚀 Starting all ZIPP services in separate terminals..."

gnome-terminal -- bash -c "cd zipp-server/api_gateway && nodemon server.js; exec bash"
gnome-terminal -- bash -c "cd zipp-server/auth && nodemon server.js; exec bash"
 gnome-terminal -- bash -c "cd zipp-server/mailservice && nodemon server.js; exec bash"
gnome-terminal -- bash -c "cd zipp-server/clip && nodemon server.js; exec bash"
gnome-terminal -- bash -c "cd zipp-client2 && npm run dev; exec bash"

echo "✅ All services started in their own terminals!"

