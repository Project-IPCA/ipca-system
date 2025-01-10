#!/bin/bash

# Substitute environment variables in the Nginx configuration template
envsubst '\${SUPER_SERVER_NAME} \${STUDENT_SERVER_NAME} \${SSL_CERTIFICATE} \${SSL_CERTIFICATE_KEY}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx
nginx -g 'daemon off;'