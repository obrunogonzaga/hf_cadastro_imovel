defmodule HfCadastroImovel.Users.Create do
  alias HfCadastroImovel.Repo
  alias HfCadastroImovel.User

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end