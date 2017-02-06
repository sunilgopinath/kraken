# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kraken,
  ecto_repos: [Kraken.Repo]

# Configures the endpoint
config :kraken, Kraken.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UfMKO6WqXu2v5iQcazYf2GeX0hx39LWhmhJgoUR1m5Gw+AACZ4Flst+3Ho1wcmEp",
  render_errors: [view: Kraken.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kraken.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
