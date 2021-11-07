spawn(fn -> 40 + 2 end)

id = spawn(fn -> 40 + 2 end)

id |> Process.alive?() |> IO.puts()

self() |> Process.alive?() |> IO.puts()
