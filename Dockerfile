# nginx/Dockerfile

FROM nginx:alpine

# Copy custom configuration

COPY conf.d/ /etc/nginx/conf.d/

# Create directory for logs

RUN mkdir -p /var/log/nginx

# Expose ports

EXPOSE 80 443

# Health Check

HEALTHCHECK --interval=30s --timeout=3s \
CMD curl -f http://localhost/ || exit 1

