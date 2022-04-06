(*
    length of array has to be enough to
    find such value described before
*)
fun number_before_reaching_sum(sum: int, array: int list) = 
    if sum - hd(array) <= 0 then 0 
    else 1 + number_before_reaching_sum(sum - hd(array), tl(array));


val array = [1, 2, 3, 4, 5, 6, 7];
val n = number_before_reaching_sum( 14, array );(*n = 4*)
val n = number_before_reaching_sum( 15, array );(*n = 4*)
val n = number_before_reaching_sum( 16, array );(*n = 5*)