module FrequencyCounter exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Exercise.FrequencyCounter exposing (frequencyCounter)


suite : Test
suite =
    describe "Test FrequencyCounter"
        [ test "should return empty list if the given list is empty" <|
            \_ ->
                (frequencyCounter [])
                    |> Expect.equal []

        , describe "Given a list of words, it should return a list of tuples with first value being the word and second value being the frequency of the word occurs in the list"
            [ test "1." <|
                \_ ->
                    let
                        words = ["Elm"]
                        expected = [("Elm", 1)]
                    in
                        Expect.equal expected (frequencyCounter words)
            , test "2." <|
                \_ ->
                    let
                        words = ["Elm", "Javascript", "PHP", "Elm", "Javascript", "Elm"]
                        expected = [("Elm", 3), ("Javascript", 2), ("PHP", 1)]
                    in
                        Expect.equal expected (frequencyCounter words)
            , test "3." <|
                \_ ->
                    let
                        words = ["Elm", "Javascript", "Javascript", "PHP"]
                        expected = [("Elm", 1), ("Javascript", 2), ("PHP", 1)]
                    in
                        Expect.equal expected (frequencyCounter words)
            ]
        ]
