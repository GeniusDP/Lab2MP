(*Task 2*)
fun number_in_month(dateList: (int*int*int) list, monthNumber: int) = 
    if null dateList then 0
    else 
        number_in_month( tl dateList, monthNumber ) + 
            (if #2 (hd dateList) = monthNumber then 1 else 0);

fun provided_test1 () = 
    let val array = [(2002, 7, 24), (2005, 5, 11), 
        (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)]
    in
         number_in_month(array, 4)
    end;


fun provided_test2 () = 
    let val array = [(2002, 7, 24), (2005, 5, 11), 
        (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)]
    in
         number_in_month(array, 3)
    end;


fun provided_test3 () = 
    let val array = [(2002, 7, 24), (2005, 5, 11), 
        (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)]
    in
         number_in_month(array, 10)
    end;

val cnt = provided_test1();(*2 times here*)
val cnt = provided_test2();(*1 time here*)
val cnt = provided_test3();(*0 times here*)