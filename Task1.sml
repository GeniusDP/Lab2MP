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

(* === Tests === *)

fun provided_test1 () = 
    let val date1 = (2002, 7, 24)
         val date2 = (2005, 5, 11)
    in
         is_older(date1, date2)
    end;

fun provided_test2 () = 
    let val date1 = (1966, 4, 21)
         val date2 = (2005, 5, 11)
    in
         is_older(date1, date2)
    end;

fun provided_test3 () = 
    let val date1 = (1966, 4, 21)
         val date2 = (1966, 4, 21)
    in
         is_older(date1, date2)
    end;

fun provided_test4 () = 
    let val date1 = (2002, 7, 24)
         val date2 = (1966, 4, 21)
    in
         is_older(date1, date2)
    end;


(*Tests for Task 1*)
val meAndBrother = provided_test1();
val fatherAndBrother = provided_test2();
val equalDatesTest = provided_test3();
val meAndFather = provided_test4();
