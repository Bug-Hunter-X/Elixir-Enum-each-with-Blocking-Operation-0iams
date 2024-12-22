```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    Process.sleep(1000) # Simulate some time-consuming operation
  end
  IO.puts(x)
end)
```