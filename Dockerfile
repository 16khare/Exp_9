# Use the official Ngnix image as the base image
FROM ngnix:latest

# Copy HTML file to the default Ngnix document root directory
COPY index.html /usr/share/ngnix/html/

# Expose port 80 for incoming HTTP requests
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
 
