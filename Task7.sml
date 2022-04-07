fun get_nth(stringList: string list, n: int) = 
    if n = 1 then hd( stringList )
    else get_nth( tl( stringList ), n - 1 );

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

fun date_to_string(date: (int*int*int)) = 
    get_nth(monthNames, #2 date)^ " " 
    ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date);


(* === Tests === *)

val stringDate = date_to_string((1966, 04, 21));
val stringDate = date_to_string((2008, 08, 08));