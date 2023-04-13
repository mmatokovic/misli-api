defmodule MisliApi.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :disabled, :boolean, default: false
    field :name, :string
    belongs_to :account, MisliApi.Accounts.Account

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:account_id, :name, :disabled])
    |> validate_required([:account_id])
  end
end
