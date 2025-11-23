# Use rocker/r-base as base image
FROM rocker/geospatial:latest

# Run as the current user
USER $USER:$GROUPS

# Install necessary R packages listed in a requirements file - Be sure to edit this file as needed
COPY requirements.R /tmp/requirements.R
RUN R -e "source('/tmp/requirements.R')"
# clean up requirements file so PAT is not exposed on shiny image
RUN rm /tmp/requirements.R

# Set working directory
WORKDIR /app
# Create data directory
RUN mkdir -p /app/data
RUN mkdir -p /app/logs
COPY dl_aus_weather.R /app/
COPY entrypoint.sh /app/

# Set ownership to the appuser
RUN chown -R $USER /app

# Install cron
RUN apt-get update && apt-get install -y cron

# Add script to crontab to run at 14:00 UTC every day
RUN echo "* 14 * * * /usr/local/bin/Rscript /app/dl_aus_weather.R >> /app/logs/`date +%Y-%m-%d`_cron.log 2>&1" > /app/crontab

# enable crontab
RUN crontab /app/crontab

# Start cron in background
ENTRYPOINT ["sh" ,"/app/entrypoint.sh" ]
CMD ["cron", "-f"]