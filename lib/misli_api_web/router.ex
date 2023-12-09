defmodule MisliApiWeb.Router do
  use MisliApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MisliApiWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
    resources "/accounts", AccountController, except: [:new, :edit]
  end
end
