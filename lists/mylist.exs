defmodule MyList do
  def len([]), do: 0
  def len([_head|tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head|tail]), do: [head*head | square(tail)]

  def add_1([]), do: []
  def add_1([ head | tail ]), do: [ head + 1 | add_1(tail) ]

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([ head | tail], total), do: _sum(tail, head + total)

  def other_sum([]), do: 0
  def other_sum([ head | tail]), do: head + other_sum(tail)

  def reduce([], value, _) do
    value
  end
  def reduce([ head | tail ], value, fun) do
    reduce(tail, fun.(head, value), fun)
  end

  def mapsum(list, func), do: _mapsum(list, 0, func)

  defp _mapsum([], sum, _func), do: sum
  defp _mapsum([ head | tail ], sum, func), do: _mapsum(tail, func.(head) + sum, func)

  def max([a]), do: a
  def max([ head | tail ]), do: Kernel.max(head, max(tail))

  # def caesar([], _n), do: []
  # def caesar([ head | tail ], n), when: head+n <= ?z, do: [ head+n | caesar(tail, n) ]
  # def caesar([ head | tail ], n), do: [ head+n-26 | caesar(tail, n) ]

  def span(to,to), do: [to]
  def span(from, to), do: [ from | span(from+1, to) ]

  def all?([]), do: true
  def all?([ head | tail ]) do
    if !!head do
      all?(tail)
    else
      false
    end
  end

  def each([], _fun), do: []
  def each([ head | tail ], fun) do
    [ fun.(head) | each(tail, fun) ]
  end

  def flatten([]), do: []
  def flatten([ head | tail ]) do
    flatten(head) ++ flatten(tail)
  end
  def flatten(head), do: [ head ]
end
