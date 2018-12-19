# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cpcop_server,
  ecto_repos: [CpcopServer.Repo]

# Configures the endpoint
config :cpcop_server, CpcopServer.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZUsGNsRpHIxFMqymQctmXrXHwam5A3C/2qtCro+yQ/emcHURu3MwkKUCdJO4mH7v",
  render_errors: [view: CpcopServer.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CpcopServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
