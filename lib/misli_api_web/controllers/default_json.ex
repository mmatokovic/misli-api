defmodule MisliApiWeb.DefaultJSON do
  use MisliApiWeb, :controller

  def index(conn, _params) do
    text conn, "Misli api is LIVE - #{Mix.env()}"
  end
end
