defmodule Procs do
  # spawn(Procs, :greeter, [ "world" ])
  # PID<0.425.0>
  # Hello, world
  #  def greeter(name) do
  #  Process.sleep(1000)
  #  IO.puts("Hello, #{name}")
  #end

  # spawn Procs, :greeter, []
  # #PID<0.21848.3>
  # iex(7)> pid = v(-1)
  # PID<0.21848.3>
  # iex(8)> send pid, "world"
  # Hello, "world"
  # "world"
  def greeter(greeting) do
    receive do
      msg -> IO.puts("#{greeting}, #{msg}")
    end
    greeter(greeting)
  end
end
