# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :holo_api,
  ecto_repos: [HoloApi.Repo]

# Configures the endpoint
config :holo_api, HoloApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GsJJQpjM61TCk+I7Z0nT7T3/EYe1ZBfWOycKQ3Nn228QzBBie365JqA01BYc46ap",
  render_errors: [view: HoloApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: HoloApi.PubSub,
  live_view: [signing_salt: "mB7LOiq1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
