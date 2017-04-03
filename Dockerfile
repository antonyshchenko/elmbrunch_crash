FROM elixir:1.4.2
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN apt-get update && apt-get install -y inotify-tools
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs
ADD . /app
WORKDIR /app/assets
RUN npm install
RUN npm install -g elm
RUN node node_modules/brunch/bin/brunch build
WORKDIR /app
CMD mix phx.server
