defmodule Ex0 do
# rewrite sum function without an accumulator
    def sum(list), do: _sum(list)
    defp _sum([]), do: 0 
    defp _sum([head | tail]) do
        head + _sum(tail)
    end
end
defmodule Ex1 do
    # mapsum takes list and function, applies function to each item then sums totals
    def mapsum(list,func), do: _mapsum(list,func)
    defp _mapsum([],_func), do: 0
    defp _mapsum([head|tail],func) do
        func.(head) + _mapsum(tail, func)
    end
end
defmodule Ex2 do
    #func that returns the element with max value in the list
    # because I have the highest defined as -1, this funcion only works for positive lists
    @highest -1
    def max(list), do: _max(list, @highest)
    defp _max([], highest), do: highest
    defp _max([head | tail], highest) when head > highest, do: _max(tail, head)
    defp _max([head | tail], highest) when head <= highest, do: _max(tail, highest)
end
defmodule Ex3 do
    # i couldnt figure out how these are suposed to map back to characters. I tried writing the main _ceasar multiple ways. it out puts character codes for the string "elixir" though
    def ceasar(list, n), do: List.flatten _ceasar(list, n)
    defp _ceasar([],_n), do: []
    defp _ceasar([head | tail], n) do
        [wrap(head+n) | _ceasar(tail,n)]
    end
    defp wrap(code) when code > 122, do: code-122
    defp wrap(code) when code <= 122, do: code
end
defmodule Ex4 do
    #create span function to create a list from a number to a number using pattern matching
    def span(from, to), do: _span from, to
    defp _span(from = to, to), do: from
    defp _span(from, to) do
        [from | _span(from+1, to)]
    end 
end