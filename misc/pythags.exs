defmodule Pythagoras do
  def triples_slow(max) do
    for a <- 1..max,
      b <- 1..max,
      c <- 1..max,
      a * a + b * b == c * c,
      do: {a, b, c}
  end

  def triples_fast(max) do
    for a <- 1..max,
      b <- a..max,
      c <- b..max,
      a * a + b * b == c * c,
      do: {a, b, c}
  end
end
