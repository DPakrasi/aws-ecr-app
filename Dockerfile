FROM public.ecr.aws/nginx/nginx:1.25

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf etc/nginx/conf.d/default.conf

COPY build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx"]