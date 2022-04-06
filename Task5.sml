(*Task5*)
fun number_in_month(dateList: (int*int*int) list, monthNumber: int) = 
    if null dateList then []
    else 
        (
            if #2 (hd dateList) = monthNumber 
            then (hd dateList)::number_in_month( tl dateList, monthNumber )
            else number_in_month( tl dateList, monthNumber )
        );

fun solveProblem5(dateList: (int*int*int) list, monthList: int list) = 
    if null monthList then []
    else 
    number_in_month(dateList, hd monthList)@solveProblem5(dateList, tl monthList);

val dateList = [(2002, 7, 24), (2005, 5, 11), 
    (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)];

val cnt = solveProblem5(dateList, [3, 4, 5, 7]);(*all ==> cnt = 5*)
val cnt = solveProblem5(dateList, [3, 4]);(*cnt = 3*)
val cnt = solveProblem5(dateList, []);(*cnt = 0*)