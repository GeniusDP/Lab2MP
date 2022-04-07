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


fun provided_test1 () = 
    let val date = (1966, 04, 21)
    in
        date_to_string(date)
    end;


fun provided_test2 () = 
    let val date = (2008, 08, 08)
    in
        date_to_string(date)
    end;



(* === Tests === *)

val stringDate = provided_test1();
val stringDate = provided_test2();