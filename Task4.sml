(*Task4*)
fun dates_in_month(dateList: (int*int*int) list, month: int) = 
    if null dateList then []
    else (
        if #2 (hd dateList) = month 
        then (hd dateList)::dates_in_month(tl dateList, month)
        else dates_in_month(tl dateList, month)
    );


val dateList = [(2002, 7, 24), (2005, 5, 11), 
    (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)];

val resultList = dates_in_month(dateList, 4);
val resultList = dates_in_month(dateList, 3);
val resultList = dates_in_month(dateList, 12);