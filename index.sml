(*

(*Task 1*)
fun is_older(firstDate: int*int*int, secondDate: int*int*int) = 
    if (#1 firstDate) < (#1 secondDate) then true
    else if (#1 firstDate) > (#1 secondDate) then false
    (*here year1 == year2*)
    else 
        if (#2 firstDate) < (#2 secondDate) then true
        else if (#2 firstDate) > (#2 secondDate) then false
        else
            if (#3 firstDate) < (#3 secondDate) then true
            else if (#3 firstDate) > (#3 secondDate) then false
            else false;
(*Tests for Task 1*)
val meAndBrother = is_older((2002, 7, 24), (2005, 5, 11));
val fatherAndBrother = is_older((1966, 4, 21), (2005, 5, 11));
val equalDatesTest = is_older((1966, 4, 21), (1966, 4, 21));
val meAndFather = is_older((2002, 7, 24), (1966, 4, 21));
(*==============================================================*)

*)

(*Task 2*)
fun number_in_month(dateList: (int*int*int) list, monthNumber: int) = 
    if null dateList then 0
    else 
        number_in_month( tl dateList, monthNumber ) + 
            (if #2 (hd dateList) = monthNumber then 1 else 0);

val array = [(2002, 7, 24), (2005, 5, 11), 
    (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)];
val cnt = number_in_month(array, 4);(*2 times here*)
val cnt = number_in_month(array, 3);(*1 time here*)
val cnt = number_in_month(array, 10);(*0 times here*)


