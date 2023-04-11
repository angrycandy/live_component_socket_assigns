defmodule MyApp.Repo.Migrations.CreateThings do
  use Ecto.Migration

  def change do
    create table(:things) do
      add :name, :string
      add :owner, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:things, [:owner])
  end
end
