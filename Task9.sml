fun number_before_reaching_sum(sum: int, array: int list) = 
    if null array then 0
    else if sum - hd(array) <= 0 then 0 
    else 1 + number_before_reaching_sum(sum - hd(array), tl(array));


fun what_month(dayOfYear: int, daysPerMonth: int list) = 
    1 + number_before_reaching_sum(dayOfYear, daysPerMonth);

val daysPerMonth = [
    31,
    28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
];

val dayOfYear = 400;

val resultMonth = what_month(dayOfYear, daysPerMonth);