defmodule WorkdaysTest do
  use ExUnit.Case
  doctest Workdays

  test "9th of March is work day" do
    assert Workdays.workday?(~D[2020-03-09]) == true
  end

  test "14th of March which is Saturday is not a work day" do
    assert Workdays.workday?(~D[2020-03-14]) == false
  end

  test "Easter Sunday and Monday are not a work days" do
    assert Workdays.workday?(~D[2020-04-12]) == false
    assert Workdays.workday?(~D[2020-04-13]) == false
  end

  test "Christmas Days are not work days" do
    assert Workdays.workday?(~D[2020-12-24]) == false
    assert Workdays.workday?(~D[2020-12-25]) == false
    assert Workdays.workday?(~D[2020-12-26]) == false
  end
end
