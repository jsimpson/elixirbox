defmodule Procs do
  # spawn(Procs, :greeter, [ "world" ])
  # Hello, world
  # PID<0.425.0>

  def greeter(name) do
    Process.sleep(1000)
    IO.puts("Hello, #{name}")
  end
end
