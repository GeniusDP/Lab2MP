(*Task4*)
fun dates_in_month(dateList: (int*int*int) list, month: int) = 
    if null dateList then []
    else (
        if #2 (hd dateList) = month 
        then (hd dateList)::dates_in_month(tl dateList, month)
        else dates_in_month(tl dateList, month)
    );


(* === Tests === *)

fun provided_test1 () = 
    let val dateList = [(2002, 7, 24), (2005, 5, 11), 
        (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)]
        val month = 4
    in
         dates_in_month(dateList, month)
    end;
    
fun provided_test2 () = 
    let val dateList = [(2002, 7, 24), (2005, 5, 11), 
        (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)]
        val month = 3
    in
         dates_in_month(dateList, month)
    end;
    

fun provided_test3 () = 
    let val dateList = [(2002, 7, 24), (2005, 5, 11), 
        (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)]
        val month = 12
    in
         dates_in_month(dateList, month)
    end;
    
val resultList = provided_test1();
val resultList = provided_test2();
val resultList = provided_test3();