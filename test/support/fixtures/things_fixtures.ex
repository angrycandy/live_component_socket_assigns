defmodule MyApp.ThingsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MyApp.Things` context.
  """

  @doc """
  Generate a thing.
  """
  def thing_fixture(attrs \\ %{}) do
    {:ok, thing} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> MyApp.Things.create_thing()

    thing
  end
end
