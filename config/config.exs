# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hf_cadastro_imovel,
  ecto_repos: [HfCadastroImovel.Repo]

config :hf_cadastro_imovel, HfCadastroImovel.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :hf_cadastro_imovel, HfCadastroImovelWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cXVOkeXKqp4sqX6A+OGhr5u1U6TlS15Mi1dT8+iJCOx6Mxps5BEIYKYvdJmvuyMv",
  render_errors: [view: HfCadastroImovelWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: HfCadastroImovel.PubSub,
  live_view: [signing_salt: "nDWJVWyb"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
