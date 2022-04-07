(*
    length of array has to be enough to
    find such value described before
*)
fun number_before_reaching_sum(sum: int, array: int list) = 
    if null array then 0
    else if sum - hd(array) <= 0 then 0 
    else 1 + number_before_reaching_sum(sum - hd(array), tl(array));

(* === Tests === *)

fun provided_test1 () = 
    let val array = [1, 2, 3, 4, 5, 6, 7]
        val sum = 14
    in
        number_before_reaching_sum( sum, array )
    end;


fun provided_test2 () = 
    let val array = [1, 2, 3, 4, 5, 6, 7]
        val sum = 15
    in
        number_before_reaching_sum( sum, array )
    end;


fun provided_test3 () = 
    let val array = [1, 2, 3, 4, 5, 6, 7]
        val sum = 16
    in
        number_before_reaching_sum( sum, array )
    end;


val n = provided_test1();(*n = 4*)
val n = provided_test2();(*n = 4*)
val n = provided_test3();(*n = 5*)