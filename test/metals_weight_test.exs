defmodule MetalsWeightTest do
  use ExUnit.Case
  doctest MetalsWeight

  test "calculate weight of cupper cuboid 5x5x2" do
    assert MetalsWeight.calculate(:copper, :cuboid, [5, 5, 2]) == 448.0
  end

  test "calculate weight of lead cuboid 10x10x5" do
    assert MetalsWeight.calculate(:lead, :cuboid, [10, 10, 2]) == 2266.0
  end

  test "calculate weight of aluminium cuboid 10x10x5" do
    assert MetalsWeight.calculate(:aluminium, :cuboid, [7, 7, 3]) == 396.9
  end

  test "calculate weight of cupper cylinder 10x100" do
    assert MetalsWeight.calculate(:aluminium, :cylinder, [3.5, 9]) == 935.1
  end
end
