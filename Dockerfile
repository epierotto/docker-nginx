
FROM ubuntu:trusty
MAINTAINER Exequiel Pierotto <epierotto@abast.es>

# Install Nginx

# Add application repository URL to the default sources
RUN \
#	echo "deb http://archive.ubuntu.com/ubuntu/ trusty main universe" >> /etc/apt/sources.list && \
	apt-get update && apt-get install -y \
	nginx  

# Remove the default Nginx configuration file
#RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
#ADD nginx.conf /etc/nginx/

# Append "daemon off;" to the beginning of the configuration
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
CMD service nginx start
