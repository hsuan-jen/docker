#!/bin/sh
set -e

# Ensure cron job file permissions
chmod 0644 /etc/cron.d/php-cron

# Ensure cron log exists
touch /var/log/cron.log
chmod 0644 /var/log/cron.log

# Start cron daemon
cron

# Start PHP-FPM as PID 1
exec php-fpm
