defmodule MisliApi.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MisliApi.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        disabled: true,
        name: "some name",
        email: "some email",
        information: "some information"
      })
      |> MisliApi.Users.create_user()

    user
  end
end
