//https://www.hackerrank.com/challenges/divisible-sum-pairs

// Complete the divisibleSumPairs function below.
function divisibleSumPairs(n, k, ar) {
    var counter = 0;
    for(var i=0; i<n; i++){
        for(var j=0; j<n; j++){
         if((ar[i]+ar[j]) % k == 0 && i< j && i!= j) counter++;
        }
    }
    return counter;
}