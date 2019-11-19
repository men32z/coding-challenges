//https://www.hackerrank.com/challenges/staircase

// Complete the staircase function below.
function staircase(n) {
    for(var i = 1; i<=n; i++){
        var stri = ''
        for(var j = 0; j<n-i; j++) stri += ' ';
        for(var j = 0; j<i; j++) stri += '#';
        console.log(stri)
    }

}