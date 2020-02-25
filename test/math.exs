defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  defp do_sum(a, b) do
    a + b
  end
end

IO.puts(Math.sum(2, 40))
IO.puts(Math.do_sum(2, 40))
