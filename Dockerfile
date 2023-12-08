FROM --platform=linux/amd64 nginx:latest

# ARG publish=80:80
# COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf etc/nginx/conf.d/

COPY build /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
