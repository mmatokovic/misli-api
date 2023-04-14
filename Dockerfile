FROM elixir:latest

EXPOSE 4000

RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    apt-get install -y nodejs && \
    apt-get install -y git && \
    apt-get install -y make && \
    apt-get install -y postgresql-contrib && \
    apt-get install -y vim && \
    mix local.hex --force && \
    mix archive.install hex phx_new --force && \
    mix local.rebar --force

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Set entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/bin/bash", "-c", "while true; do sleep 10; done;"]