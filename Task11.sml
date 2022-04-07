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



fun legacy(xs: (int*int*int) list) = 
    if null xs 
    then NONE
    else
        let val tl_ans = legacy(tl xs)
        in if isSome( tl_ans ) andalso is_older( valOf( tl_ans ), hd( xs ) )
            then tl_ans 
            else SOME( hd( xs ) )
        end;
            

val dateList = [(2002, 7, 24), (2005, 5, 11), 
    (1966, 4, 21), (1961, 4, 12), (1954, 3, 13)];

(* === Tests === *)

val result = legacy( dateList );
val result = legacy( [] );

