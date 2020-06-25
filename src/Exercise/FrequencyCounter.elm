{--Word frequency counter
Given a list of words, the task is to find out how many times a word occurs in the list.

E.g. frequencyCounter ["Elm", "PHP", "Elm", "Elm", "JS"] should returns
[("Elm", 3), ("PHP", 1), ("JS", 1)]
--}


module Exercise.FrequencyCounter exposing (frequencyCounter)

import Dict


type alias Word =
    String


type alias Count =
    Int


frequencyCounter : List Word -> List ( Word, Count )
frequencyCounter words =
    List.foldl foldFn Dict.empty words
        |> Dict.toList


foldFn : Word -> Dict.Dict Word Count -> Dict.Dict Word Count
foldFn word dict =
    let
        updateWordCount : Maybe Count -> Maybe Count
        updateWordCount count =
            case count of
                Maybe.Nothing ->
                    Just 1

                Just value ->
                    Just (value + 1)
    in
    Dict.update word updateWordCount dict
