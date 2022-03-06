defmodule Exmeal.Meals.Delete do
  alias Exmeal.{Error, Meal, Repo}

  def call(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.build("Meal not found", :not_found)}
      meal -> Repo.delete(meal)
    end
  end
end
