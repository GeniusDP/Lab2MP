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