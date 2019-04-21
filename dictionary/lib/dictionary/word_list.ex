defmodule Dictionary.WordList do
  def random_word(words) do
    Enum.random(words)
  end

  def start() do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end
end
