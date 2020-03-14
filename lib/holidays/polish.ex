defmodule Calendar.Holidays.Polish do
  @moduledoc false

  @doc false
  def bank_holiday?(date) do
    cond do
      date.month == 5 and date.day == 1 -> true
      date.month == 5 and date.day == 3 -> true
      true -> false
    end
  end
end
