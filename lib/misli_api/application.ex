defmodule MisliApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      MisliApiWeb.Telemetry,
      # Start the Ecto repository
      MisliApi.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: MisliApi.PubSub},
      # Start the Endpoint (http/https)
      MisliApiWeb.Endpoint
      # Start a worker by calling: MisliApi.Worker.start_link(arg)
      # {MisliApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MisliApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MisliApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
