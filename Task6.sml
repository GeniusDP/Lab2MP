fun get_nth(stringList: string list, n: int) = 
    if n = 1 then hd( stringList )
    else get_nth( tl( stringList ), n - 1 );


(* === Tests === *)


fun provided_test1 () = 
    let val array = ["evgeniya", "alexandra", "anna", 
            "kamila", "daria", "alina"]
        val n = 1
    in
         get_nth(array, n)
    end;


fun provided_test2 () = 
    let val array = ["evgeniya", "alexandra", "anna", 
            "kamila", "daria", "alina"]
        val n = 3
    in
        get_nth(array, n)
    end;


fun provided_test3 () = 
    let val array = ["evgeniya", "alexandra", "anna", 
            "kamila", "daria", "alina"]
        val n = 6
    in
        get_nth(array, n)
    end;


fun provided_test4 () = 
    let val array = ["evgeniya", "alexandra", "anna", 
            "kamila", "daria", "alina"]
        val n = 7
    in
        get_nth(array, n)
    end;



fun provided_test5 () = 
    let val array = []
        val n = 7
    in
        get_nth(array, n)
    end;



val testCase = provided_test1();
val testCase = provided_test2();
val testCase = provided_test3();
val testCase = provided_test4();
val testCase = provided_test5();