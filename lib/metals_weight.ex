defmodule MetalsWeight do
  @moduledoc """
  Documentation for `MetalsWeight`.
  """

  @doc """
  The calculator can calculate the weight of metals item based on shape and material.
  Valid materials: :copper, :iron, :aluminium
  Valid shapes: :cuboid, :cylinder
  Valid size: cuboud: [height, width, depth], cylinder: [radius, lenght]

  Returns `float`

  ## Examples

      iex> MetalsWeight.calculate(:copper, :cuboid, [5, 5, 2])
      448.0
      iex> MetalsWeight.calculate(:lead, :cylinder, [7, 5])
      8720.5

  """
  def calculate(material, shape, size) do
    volume(shape, size)
    |> weight(material)
    |> Float.floor(1)
  end

  def volume(:cuboid, size), do: Enum.product(size)
  def volume(:cylinder, [radius | [lenght | _]]), do: :math.pi() * radius ** 2 * lenght

  def weight(volume, material), do: volume * density(material)

  defp density(material) do
    Map.fetch!(%{lead: 11.33, copper: 8.96, aluminium: 2.7}, material)
  end
end
