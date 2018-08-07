FROM nginx:1.15.2-alpine

# timezone:
RUN apk update && \
    apk upgrade && \
	apk add --no-cache tzdata
# ### ### bug older Alpine, add to prev commands:
# ### cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV TZ=Europe/Rome

COPY ["./dockerfiles/copy_to_image/etc/nginx/gzip.conf", \
      "./dockerfiles/copy_to_image/etc/nginx/mime.conf", \
	  "./dockerfiles/copy_to_image/etc/nginx/nginx.conf", \
	  "./dockerfiles/copy_to_image/etc/nginx/server_wordpress.conf", \
	  "/etc/nginx/"]

# COPY ["./dockerfiles/copy_to_image/etc/ssl/certs/dhparam.pem", \
#       "./dockerfiles/copy_to_image/etc/ssl/certs/selfsigned.crt", \
# 	    "./dockerfiles/copy_to_image/etc/ssl/certs/selfsigned.key", \
# 	    "/etc/ssl/certs/"]

# RUN chmod -x /etc/ssl/certs/*.* && \
RUN    chmod -x /etc/nginx/*.conf && \
	rm -rf /app/dockerfiles
# COPY ./dockerfiles/dos2unix.sh /home/dos2unix.sh
#  RUN chmod +x /home/dos2unix.sh && \
#      /home/dos2unix.sh /etc/nginx/*.conf 

