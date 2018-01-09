FROM tu6ge/nginx_lua:1

COPY ./run.sh /root/run.sh
#COPY ./access.log /root/access.log
RUN chmod +x /root/run.sh
WORKDIR /root

CMD ["/root/run.sh"]
