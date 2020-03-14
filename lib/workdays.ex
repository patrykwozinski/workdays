defmodule Workdays do
  @moduledoc """
  Work days calculator and checker
  """

  @doc """
  Is the day a workday?

  ## Examples

      iex> Workdays.workday?("2020-03-09")
      true

  """
  def workday?(day) do
    day = Date.from_iso8601!(day)

    !weekend?(day)
  end

  defp weekend?(date) do
    Date.day_of_week(date) > 5
  end
end
