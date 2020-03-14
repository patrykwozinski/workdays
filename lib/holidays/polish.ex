defmodule Calendar.Holidays.Polish do
  @moduledoc false

  @doc false
  def bank_holiday?(date) do
    cond do
      date.month == 1 and date.day == 6 -> true
      date.month == 5 and date.day == 1 -> true
      date.month == 5 and date.day == 3 -> true
      date.month == 8 and date.day == 15 -> true
      date.month == 11 and date.day == 1 -> true
      date.month == 11 and date.day == 11 -> true
      true -> false
    end
  end

  @doc false
  def corpus_christi?(date) do
    {_, easter} = Calendar.Holidays.Moving.get_easter(date.year)
    corpus_christi = Date.add(easter, 60)

    :eq == Date.compare(date, corpus_christi)
  end
end
