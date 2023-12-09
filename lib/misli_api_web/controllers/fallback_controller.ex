defmodule MisliApiWeb.FallbackController do
  @moduledoc """
  Translates controller action results into valid `Plug.Conn` responses.

  See `Phoenix.Controller.action_fallback/1` for more details.
  """
  use MisliApiWeb, :controller

  # This clause handles errors returned by Ecto's insert/update/delete.
  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    |> put_view(json: MisliApiWeb.ChangesetJSON)
    |> render(:error, changeset: changeset)
  end

  # This clause is an example of how to handle resources that cannot be found.
  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(json: MisliApiWeb.ErrorJSON)
    |> render(:"404")
  end

  # This clause is an example of how to handle resources that are unauthorized.
  def call(conn, {:error, :unauthorized}) do
    conn
    |> put_status(403)
    |> put_view(json: MisliApiWeb.ErrorJSON)
    |> render(:"403")
  end
end
