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
