FROM nginx:alpine
# Remove default nginx files first
RUN rm -rf /usr/share/nginx/html/*
# Copy ALL repo files safely (ignores .dockerignore)
COPY . /usr/share/nginx/html/
# Fix permissions
RUN chmod -R 644 /usr/share/nginx/html/* && \
    chown -R nginx:nginx /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
