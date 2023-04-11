defmodule MyApp.Things.Thing do
  use Ecto.Schema
  import Ecto.Changeset

  schema "things" do
    field :name, :string
    field :owner, :id

    timestamps()
  end

  @doc false
  def changeset(thing, attrs) do
    thing
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
