defmodule Exmeal.Error do
  @keys [:result, :status]

  @enforce_keys @keys

  defstruct @enforce_keys

  def build(result, status) do
    %__MODULE__{
      result: result,
      status: status
    }
  end
end
