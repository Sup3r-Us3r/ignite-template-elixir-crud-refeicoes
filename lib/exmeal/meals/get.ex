defmodule Exmeal.Meals.Get do
  alias Exmeal.{Error, Meal, Repo}

  def by_id(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.build("Meal not found", :not_found)}
      meal -> {:ok, meal}
    end
  end
end
