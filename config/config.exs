# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :social_voting,
  ecto_repos: [SocialVoting.Repo]

# Configures the endpoint
config :social_voting, SocialVotingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/nMU1cmg3f/AuzLyjZFsUhX36lzGzfl194JwBRClc2FiCy/HTISnhWvPwb4hJt19",
  render_errors: [view: SocialVotingWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SocialVoting.PubSub,
  live_view: [signing_salt: "xsgzb67n"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
