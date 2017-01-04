defmodule Ex4 do
    def sum(0), do: 0
    def sum(n), do: n + sum(n-1)
end

defmodule Ex5 do
    def gcd(x,0), do: x 
    def gcd(x,y), do: gcd(y,rem(x,y))
end

defmodule Ex6 do
    defmodule Chop do
        def guess(actual,low..high) when low <= high do
        half = div(high+low,2)
        IO.puts "Is it #{half}"
        doGuess(half,actual,low..high)
        end
        def guess(_,low..high) when low > high do
            IO.puts "passed it"
        end
        def doGuess(half,actual,low.._high) when half > actual do
            guess(actual,low..half-1)
        end
        def doGuess(half,actual,_low..high) when half < actual do
            guess(actual,half+1..high)
        end
        def doGuess(half,actual,_low.._high) when half == actual do
        IO.puts half
        end
    end
end

