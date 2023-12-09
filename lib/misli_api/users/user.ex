defmodule MisliApi.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :disabled, :boolean, default: false
    field :name, :string
    field :email, :string
    field :information, :string
    belongs_to :account, MisliApi.Accounts.Account

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :information, :disabled, :account])
    |> validate_required([:name, :email, :account])
    |> validate_format(:email, ~r/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/, message: "Invalid email address format")
    |> validate_length(:email, max: 160)
    |> unique_constraint(:email)
  end
end
