{-- Word frequency counter
Given a list of words, the task is to find out
how many times a word occurs in the list.
--}


module Exercise.FrequencyCounter exposing (frequencyCounter)


frequencyCounter : List String -> List (String, Int)
frequencyCounter words =
    [("Elm", 1)]