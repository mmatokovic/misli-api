defmodule MisliApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :email, :string
      add :information, :string
      add :disabled, :boolean, default: false, null: false
      add :account, references(:accounts, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:users, [:account, :name, :email])
  end
end
