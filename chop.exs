defmodule Chop do
  def guess(answer, range = low..high) do
    current_guess = div((high + low),2)
    IO.puts "Is it #{current_guess}?"
    check(answer, current_guess, range)
  end

  def check(answer, current_guess, _range = low.._high) when answer < current_guess do
    guess(answer, low..current_guess-1)
  end

  def check(answer, current_guess, _range = _low..high) when answer > current_guess do
    guess(answer, current_guess+1..high)
  end

  def check(answer, answer, _) do
    IO.inspect answer
  end
end
