fun number_before_reaching_sum(sum: int, array: int list) = 
    if null array then 0
    else if sum - hd(array) <= 0 then 0 
    else 1 + number_before_reaching_sum(sum - hd(array), tl(array));

fun what_month(dayOfYear: int, daysPerMonth: int list) = 
    1 + number_before_reaching_sum(dayOfYear, daysPerMonth);

fun getNthElement(array: string list, pos: int) = 
    if pos = 1 then hd array
    else getNthElement(tl array, pos - 1);


val daysPerMonth = [31,28,31,30,31,30,31,31,30,31,30,31];

val monthNames = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
];

fun month_range(day1: int, day2: int) = 
    if day1 > day2 then []
    else getNthElement(
            monthNames, 
            what_month(day1, daysPerMonth)
        )::month_range(day1+1, day2);


(* result *)

(* === Tests === *)

val result = month_range(29, 33);