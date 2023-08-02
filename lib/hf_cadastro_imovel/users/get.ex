defmodule HfCadastroImovel.Users.Get do
  alias Ecto.UUID
  alias HfCadastroImovel.Repo
  alias HfCadastroImovel.User

  def call(id) do
  id
  |> UUID.cast()
  |> handle_response()
  end

  defp handle_response(:error) do
    {:error, "UUID Inválido"}
  end

  defp handle_response({:ok, uuid}) do
    case Repo.get(User, uuid) do
      nil -> {:error, "Usuário não encontrado"}
      user -> {:ok, user}
    end
  end
end