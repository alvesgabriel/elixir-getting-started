send(self(), {:hello, "world"})
receive do
  {:hello, msg} -> msg
  {:world, _msg} -> "won't match"
end
|> IO.puts()


receive do
  {:hello, msg} -> msg
after
  1_000 -> "nothing after 1s"
end
|> IO.puts()


parent = self()
spawn(fn -> send(parent, {:hello, self()}) end)
receive do
  {:hello, pid} -> "Got hello from #{inspect pid}"
end


send(self(), :hello)
flush()
