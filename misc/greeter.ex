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
  #
  # pid = spawn_link Procs, :greeter, ["Hello", 0]
  def greeter(greeting, count) do
    receive do
      { :exit, reason } ->
        exit(reason)
      :reset ->
        greeter(greeting, 0)
      { :add, n } ->
        greeter(greeting, count + n)
      msg ->
        IO.puts("#{count}: #{greeting}, #{msg}")
        greeter(greeting, count)
    end
  end
end
