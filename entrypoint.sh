#!/bin/bash

# Ensure log directory exists
mkdir -p /app/logs

# Create log file if it doesn't exist
touch /app/logs/cron.log

# run R script and log output to a file
/usr/bin/Rscript /app/dl_aus_weather.R >> /app/logs/cron.log 2>&1

# Start cron in foreground
exec "$@"