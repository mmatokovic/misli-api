# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :misli_api,
  ecto_repos: [MisliApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :misli_api, MisliApiWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [json: MisliApiWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: MisliApi.PubSub,
  live_view: [signing_salt: "McB0iba2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Guardian to create secret_key use `mix guardian.gen.seacret`
config :misli_api, MisliApiWeb.Auth.Guardian,
  issuer: "misli_api",
  secret_key: "VYVd4SBK9A4xOsqAcHea6WMeggPXVi84Z8XvBxGCOG5/Iw9RSwH45Gyqn34zAqPO"


# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
