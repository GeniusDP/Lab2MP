(*Task3*)
fun number_in_month(dateList: (int*int*int) list, monthNumber: int) = 
    if null dateList then 0
    else 
        number_in_month( tl dateList, monthNumber ) + 
            (if #2 (hd dateList) = monthNumber then 1 else 0);

fun solveProblem3(dateList: (int*int*int) list, monthList: int list) = 
    if null monthList then 0
        else number_in_month(dateList, hd monthList) 
            + solveProblem3(dateList, tl monthList);

(* === Tests === *)

fun provided_test1 () = 
    let val dateList = [(2002, 7, 24), (2005, 5, 11), 
            (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)]
        val monthList = [3, 4, 5, 7]
    in
         solveProblem3(dateList, monthList)
    end;
    
fun provided_test2 () = 
    let val dateList = [(2002, 7, 24), (2005, 5, 11), 
            (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)]
        val monthList = [3, 4]
    in
         solveProblem3(dateList, monthList)
    end;
    

fun provided_test3 () = 
    let val dateList = [(2002, 7, 24), (2005, 5, 11), 
            (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)]
        val monthList = []
    in
         solveProblem3(dateList, monthList)
    end;
    

val cnt = provided_test1();(*all ==> cnt = 5*)
val cnt = provided_test2();(*cnt = 3*)
val cnt = provided_test3();(*cnt = 0*)
