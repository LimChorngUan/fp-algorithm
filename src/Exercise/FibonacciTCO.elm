{--Fibonacci
Returns the nth number from Fibonacci sequence 0 1 1 2 3 5 8 13 21 34 ...
--}


module Exercise.FibonacciTCO exposing (fibonacci)


fibonacci : Int -> Int
fibonacci n =
    fibonacciHelp 1 0 n


fibonacciHelp : Int -> Int -> Int -> Int
fibonacciHelp prev sum n =
    if n <= 1 then
        sum

    else
        fibonacciHelp sum (prev + sum) (n - 1)
