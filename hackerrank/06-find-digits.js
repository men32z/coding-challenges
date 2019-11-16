//https://www.hackerrank.com/challenges/find-digits

// Complete the findDigits function below.
function findDigits(n) {
    var numbers = n.toString().split('');
    var divisors = 0;
    for(var i in numbers){
        if((n%parseInt(numbers[i]))===0) divisors++;
    }
    return divisors;
}