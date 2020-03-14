defmodule Calendar.Holidays.Fixed do
  @moduledoc false

  @doc false
  def christmas?(date) do
    cond do
      date.month != 12 -> false
      date.day > 23 and date.day < 27 -> true
      true -> false
    end
  end
end
