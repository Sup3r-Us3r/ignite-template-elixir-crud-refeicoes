defmodule Exmeal.Meals.Create do
  alias Exmeal.{Error, Meal, Repo}

  def call(params) do
    params
    |> Meal.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Meal{} = meal}), do: {:ok, meal}

  defp handle_insert({:error, changeset}) do
    {:error, Error.build(changeset, :bad_request)}
  end
end
