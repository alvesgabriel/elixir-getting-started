defmodule Concat do
  def join(a, b, sep \\ " ") do
    a <> sep <> b
  end
end

defmodule DefaultTest do
  def dowork(x \\ "hello") do
    x
  end
end

IO.puts(Concat.join("Hello", "world"))
IO.puts(Concat.join("Hello", "world", "-"))
