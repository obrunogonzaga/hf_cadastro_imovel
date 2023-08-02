defmodule HfCadastroImovel.Repo do
  use Ecto.Repo,
    otp_app: :hf_cadastro_imovel,
    adapter: Ecto.Adapters.Postgres
end
