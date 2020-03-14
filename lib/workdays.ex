defmodule Workdays do
  alias Workdays.Holidays

  @moduledoc """
  Work days calculator and checker
  """

  @doc """
  Is the day a workday?

  ## Examples

      iex> Workdays.workday?("2020-03-09")
      true

  """
  def workday?(date) do
    date = Date.from_iso8601!(date)

    !weekend?(date) and !moving_holidays?(date)
  end

  defp weekend?(date) do
    Date.day_of_week(date) > 5
  end

  defp moving_holidays?(date) do
    Holidays.easter?(date) or Holidays.christmas?(date)
  end
end
