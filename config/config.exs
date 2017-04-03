# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elmbrunch_crash, ElmbrunchCrash.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+I7NGP4P7js5gwt7qTrPgJn388SoBX4o4oosJMalh1fWTYUki+Fs02O9QYX7PKMK",
  render_errors: [view: ElmbrunchCrash.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElmbrunchCrash.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
