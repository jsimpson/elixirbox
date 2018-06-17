defmodule HelloWorldTest do
  use ExUnit.Case
  doctest HelloWorld

  test "greets the world" do
    assert HelloWorld.hello() == :world
  end

  test "division" do
    { :ok, result } = HelloWorld.div(2, 1)
    assert result == 2.0
  end

  test "division by 0" do
    { :error, err } = HelloWorld.div(1, 0)
    assert err = "Cannot divide by 0."
  end

  test "pipes and strings" do
    import String

    val =
     "jonathan"
       |> reverse
       |> capitalize
       |> reverse

    assert val = "jonathaN"
  end
end
