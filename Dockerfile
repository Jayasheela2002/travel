# Use official lightweight Nginx image
FROM nginx:alpine

# Set working directory in container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy your travel blog files (index.html, login.html, images, etc.)
COPY . .

# Expose port 80
EXPOSE 80

# Nginx starts automatically, no CMD needed
