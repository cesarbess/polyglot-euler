#!/usr/bin/env elixir
defmodule Problem015 do
  defp factorial(0), do: 1
  defp factorial(1), do: 1
  defp factorial(n), do: n * factorial(n - 1)

  # n = steps
  # k = grid size
  defp combination(n, k) do
    factorial(n) / (factorial(k) * factorial(n - k))
  end

  defp count_routes(k) do
    round(combination(2 * k, k))
  end

  def solve do
    count_routes(20)
  end
end

IO.puts Problem015.solve