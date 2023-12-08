defmodule MisliApiWeb.Router do
  use MisliApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MisliApiWeb do
    pipe_through :api
    get "/", DefaultJSON, :index
  end
end
