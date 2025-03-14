#!/usr/bin/env bash

# Exit immediately if any command fails
set -e

# 1. Start Node.js project (example: routing-service)
#    - If there are additional frontend modules, repeat similar steps
echo "=== Starting Node.js (routing-service) ==="
cd routing-service
mvn spring-boot:run &  # Run in the background
cd ..  # Return to the project root directory

# 2. Start Spring Boot services
#    - This example includes: gateway, group-manage-service, signal-service, routing-service, and stun-service
#    - To keep logs organized, you can redirect output or run each service in separate terminals

echo "=== Starting Spring Boot: gateway ==="
cd gateway
mvn spring-boot:run &  # Run in the background
cd ..

echo "=== Starting Spring Boot: group-manage-service ==="
cd group-manage-service
mvn spring-boot:run &  # Run in the background
cd ..

echo "=== Starting Spring Boot: signal-service ==="
cd signal-service
mvn spring-boot:run &  # Run in the background
cd ..

echo "=== Starting Spring Boot: routing-service (if it also has a Spring Boot backend) ==="
cd routing-service
mvn spring-boot:run &  # Run in the background
cd ..

echo "=== Starting Spring Boot: stun-service ==="
cd stun-service
mvn spring-boot:run &  # Run in the background
cd ..

# 3. Keep script alive until all background processes end
echo "=== All services are starting in the background ==="
echo "Press Ctrl+C to stop everything (or kill the processes manually)."
wait
