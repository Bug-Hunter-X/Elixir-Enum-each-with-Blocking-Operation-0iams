```elixir
list = [1, 2, 3, 4, 5]

tasks = Enum.map(list, fn x ->
  Task.async(fn ->
    if x == 3 do
      Process.sleep(1000) # Simulate some time-consuming operation
    end
    {x, :ok}
  end)
end)

results = Enum.map(tasks, fn task ->
  Task.await(task)
end)

Enum.each(results, fn {x, _} -> IO.puts(x) end)
```