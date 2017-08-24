# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :slime_bug,
  ecto_repos: [SlimeBug.Repo]

# Configures the endpoint
config :slime_bug, SlimeBug.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lx3mOb/SQLObMoi4iJW9vczY+c5iFJQZfi4UvwTZWEmUq5Yeidy9ctOqubx/A4aZ",
  render_errors: [view: SlimeBug.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SlimeBug.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
