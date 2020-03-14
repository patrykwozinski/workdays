defmodule CalendarTest do
  use ExUnit.Case
  doctest Calendar

  test "9th of March is a work day" do
    assert Calendar.workday?(~D[2020-03-09]) == true
  end

  test "14th of March which is Saturday is not a work day" do
    assert Calendar.workday?(~D[2020-03-14]) == false
  end

  test "Easter Sunday and Monday are not a work days" do
    assert Calendar.workday?(~D[2020-04-12]) == false
    assert Calendar.workday?(~D[2020-04-13]) == false
  end

  test "Christmas Days are not work days" do
    assert Calendar.workday?(~D[2020-12-24]) == false
    assert Calendar.workday?(~D[2020-12-25]) == false
    assert Calendar.workday?(~D[2020-12-26]) == false
  end

  test "Polish bank holidays are not a work days" do
    assert Calendar.workday?(~D[2020-01-06]) == false
    assert Calendar.workday?(~D[2020-05-01]) == false
    assert Calendar.workday?(~D[2020-05-03]) == false
    assert Calendar.workday?(~D[2020-06-11]) == false
    assert Calendar.workday?(~D[2020-08-15]) == false
    assert Calendar.workday?(~D[2020-11-01]) == false
    assert Calendar.workday?(~D[2020-11-11]) == false
  end
end
