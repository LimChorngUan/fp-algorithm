module FibonacciTCO exposing (..)

import Exercise.FibonacciTCO exposing (fibonacci)
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Test Fibonacci TCO"
        [ test "fibonacci -10: 0" <|
            \_ ->
                fibonacci -10
                    |> Expect.equal 0
        , test "fibonacci 0: 0" <|
            \_ ->
                fibonacci 0
                    |> Expect.equal 0
        , test "fibonacci 1: 0" <|
            \_ ->
                fibonacci 1
                    |> Expect.equal 0
        , test "fibonacci 2: 1" <|
            \_ ->
                fibonacci 2
                    |> Expect.equal 1
        , test "fibonacci 3: 1" <|
            \_ ->
                fibonacci 3
                    |> Expect.equal 1
        , test "fibonacci 4: 2" <|
            \_ ->
                fibonacci 4
                    |> Expect.equal 2
        , test "fibonacci 5: 3" <|
            \_ ->
                fibonacci 5
                    |> Expect.equal 3
        , test "fibonacci 10: 34" <|
            \_ ->
                fibonacci 10
                    |> Expect.equal 34
        ]
