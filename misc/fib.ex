defmodule Cache do
  def run(body) do
    { :ok, pid } = Agent.start_link(fn -> %{ 0 => 0, 1 => 1 } end)
    result = body.(pid)
    Agent.stop(pid)
    result
  end

  def lookup(cache, n, not_found) do
    Agent.get(cache, fn map -> map[n] end)
    |> compute(cache, n, not_found)
  end

  def compute(nil, cache, n, not_found) do
    not_found.()
    |> set(cache, n)
  end

  def compute(value, _cache, _n, _not_found) do
    value
  end

  def set(val, cache, n) do
    Agent.get_and_update(cache, fn map -> { val, Map.put(map, n, val) } end)
  end
end

defmodule Fib do
  def fib(n) do
    Cache.run(fn cache -> cached_fib(n, cache) end)
  end

  def cached_fib(n, cache) do
    Cache.lookup(cache, n, fn -> cached_fib(n - 2, cache) + cached_fib(n - 1, cache) end)
  end
end
