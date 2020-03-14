defmodule WorkdaysTest do
  use ExUnit.Case
  doctest Workdays

  test "9th of March is work day" do
    assert Workdays.workday?("2020-03-09") == true
  end
end
