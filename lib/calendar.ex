defmodule Calendar do
  alias Calendar.Holidays.Fixed, as: FixedHolidays
  alias Calendar.Holidays.Moving, as: MovingHolidays
  alias Calendar.Holidays.Polish, as: PolishHolidays

  @moduledoc """
  Work days calculator and checker
  """

  @doc """
  Is the day a workday?

  ## Examples

      iex> Calendar.workday?(~D[2020-03-09])
      true

      iex> Calendar.workday?(~D[2020-12-24])
      false

  """
  def workday?(date) do
    !weekend?(date) and !FixedHolidays.christmas?(date) and !polish?(date) and !moving_holidays?(date)
  end

  defp weekend?(date) do
    Date.day_of_week(date) > 5
  end

  defp polish?(date) do
    PolishHolidays.bank_holiday?(date) or PolishHolidays.corpus_christi?(date)
  end

  defp moving_holidays?(date) do
    MovingHolidays.easter?(date)
  end
end
