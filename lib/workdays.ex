defmodule Workdays do
  @moduledoc """
  Work days calculator and checker
  """

  @doc """
  Is the day workday?

  ## Examples

      iex> Workdays.workday?("2020-03-09")
      true

  """
  def workday?(day) do
    day = Date.from_iso8601!(day)

    !weekend?(day)
  end

  defp weekend?(date) do
    weekday = date
    |> Date.to_erl
    |> :calendar.day_of_the_week

    weekday > 5
  end
end
