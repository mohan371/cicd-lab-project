# Use a lightweight NGINX web server image
FROM nginx:alpine

# Copy your website's files into the container's web server directory
COPY index.html /usr/share/nginx/html