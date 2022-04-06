fun get_nth(stringList: string list, n: int) = 
    if n = 1 then hd( stringList )
    else get_nth( tl( stringList ), n - 1 );

val array = ["evgeniya", "alexandra", "anna", 
"kamila", "daria", "alina"];

val third = get_nth(array, 1);
val third = get_nth(array, 3);
val third = get_nth(array, 6);
val third = get_nth(array, 7);
val third = get_nth([], 7);