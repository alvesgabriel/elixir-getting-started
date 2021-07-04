defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  defp do_sum(a, b) do
    a + b
  end

  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false
end

IO.puts(Math.sum(2, 40))
# IO.puts(Math.do_sum(2, 40))

IO.puts(Math.zero?(0))
IO.puts(Math.zero?(1))
# IO.puts(Math.zero?([1, 2, 3]))
# IO.puts(Math.zero?(0.0))
