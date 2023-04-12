defmodule MisliApiWeb.DefaultController do
  use MisliApiWeb, :controller

  def index(conn, _params) do
    json conn,
    %{
      status: "live",
      environment: Mix.env()
    }
  end
end
