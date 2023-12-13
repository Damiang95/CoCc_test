 
# Use an official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration
#RUN rm -rf /etc/nginx/conf.d

#Clearing the directory /usr/share/nginx/html/
RUN rm -r /usr/share/nginx/html/*

# Copy the Angular app build output to the Nginx HTML directory
COPY dist/angular-app/browser/ /usr/share/nginx/html

# Copy your custom Nginx configuration if needed
#COPY nginx-custom.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]