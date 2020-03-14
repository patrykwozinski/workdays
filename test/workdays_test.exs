defmodule WorkdaysTest do
  use ExUnit.Case
  doctest Workdays

  test "9th of March is work day" do
    assert Workdays.workday?("2020-03-09") == true
  end

  test "14th of March which is Saturday is not a work day" do
    assert Workdays.workday?("2020-03-14") == false
  end

  test "Easter Sunday is not a work day" do
    assert Workdays.workday?("2020-04-12") == false
  end

  test "Easter Monday is not a work day" do
    assert Workdays.workday?("2020-04-13") == false
  end
end
