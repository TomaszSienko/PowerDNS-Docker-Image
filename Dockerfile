# Use Alpine Linux as the base image
FROM alpine:latest

# Install PowerDNS and MySQL
RUN apk update && \
    apk add pdns pdns-backend-mysql mysql mysql-client && \
    rm -f /var/cache/apk/*

# Copy your PowerDNS configuration and database initialization script
COPY pdns.conf /etc/pdns/pdns.conf
COPY init.sql /root/init.sql
COPY script.sh /script.sh
RUN chmod +x /script.sh


EXPOSE 53/udp 53/tcp
EXPOSE 3306/tcp

CMD ["./script.sh"]
