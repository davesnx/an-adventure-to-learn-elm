multiplier : Int
multiplier =
    2

scores : List Int
scores =
    [ 316, 320, 312, 370, 337, 318, 314 ]

-- doubleScores 
doubleScores scores =
    List.map (\x -> x * multiplier) scores

doubleScores [ 1, 2, 3]