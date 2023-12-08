defmodule MisliApi.Repo do
  use Ecto.Repo,
    otp_app: :misli_api,
    adapter: Ecto.Adapters.Postgres
end
