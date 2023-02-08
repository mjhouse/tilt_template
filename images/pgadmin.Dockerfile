FROM dpage/pgadmin4

USER root

RUN mkdir /home/pgadmin
RUN chown -R pgadmin /home/pgadmin

WORKDIR /pgadmin4/

RUN echo '*:*:*:*:703f9' >> /home/pgadmin/pgpass
RUN chown pgadmin /home/pgadmin/pgpass
RUN chmod 600 /home/pgadmin/pgpass

ADD config/pgadmin.json servers.json