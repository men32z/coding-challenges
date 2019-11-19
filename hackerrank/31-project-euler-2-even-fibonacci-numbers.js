//https://www.hackerrank.com/challenges/euler002/problem


// this code not works for big numbers,
// I translated to php to solve all cases
function evenFibonacci(n, previous= 1, first=1){
    var actual = previous + first;
    first = previous;
    if(actual <= n){
     if(actual % 2 === 0)
        return actual + evenFibonacci(n, actual, first);
        else
            return 0 + evenFibonacci(n, actual, first);
    } else return 0;
}

/*
//php solution to solve all cases
function evenFibonacci($n, $previous= 1, $first=1){
    $actual = $previous + $first;
    $first = $previous;
    if($actual <= $n){
     if($actual % 2 === 0)
        return $actual + evenFibonacci($n, $actual, $first);
        else
            return 0 + evenFibonacci($n, $actual, $first);
    } else return 0;
}
*/
