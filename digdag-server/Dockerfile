FROM java:8

EXPOSE 65432
RUN curl -o ~/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest" && \
    chmod +x ~/bin/digdag && \
    echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc && \
    . ~/.bashrc
COPY digdag.properties / 
COPY secret-access-policy.yaml /
COPY exec-digdag.sh / 
RUN sed -e "s/__placeholder__/$DB_PORT_5432_TCP_ADDR/" -i /digdag.properties

CMD ["/exec-digdag.sh"]
