fb = fn
  (0,0,_) -> "FizzBuzz"
  (0,_,_) -> "Fizz"
  (_,0,_) -> "Buzz"
  (_,_,a) -> a
end

no_logic = fn n ->
  fb.(rem(n,3),rem(n,5),n)
end

prefix = fn first_string ->
  fn second_string ->
    first_string <> " " <> second_string
  end
end
