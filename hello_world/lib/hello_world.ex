defmodule HelloWorld do
  @moduledoc """
  Documentation for HelloWorld.
  """

  @doc """
  Hello world.

  ## Examples

      iex> HelloWorld.hello
      :world

  """
  def hello do
    :world
  end

  def div(a, 0) do
    {
      :error, "Cannot divide by 0."
    }
  end

  def div(a, b) do
    {
      :ok,
      a / b
    }
  end
end
