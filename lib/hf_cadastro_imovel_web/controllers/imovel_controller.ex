defmodule HfCadastroImovelWeb.ImovelController do
  use HfCadastroImovelWeb, :controller

  # alias Wabanex.Repo
  # alias Wabanex.Imovel

  def index(conn, _params) do
    # imoveis = Repo.all Imovel
    # render(conn, "index.json", imoveis: imoveis)
    IO.inspect(conn)
    conn
    |> put_status(:ok)
    |> text("Hello World")
  end
end