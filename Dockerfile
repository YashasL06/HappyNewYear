FROM nginx:alpine
COPY index.html* /usr/share/nginx/html/  # Your site files
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
