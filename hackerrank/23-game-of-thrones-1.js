//https://www.hackerrank.com/challenges/game-of-thrones


// Complete the gameOfThrones function below.
function gameOfThrones(s) {
    s = s.split('').sort();
    var currentCounter = 0;
    var currentCounterChar = '';
    var odds = 0;
    for(var i =0; i < s.length; i++) {
        console.log(s[i])
        if(s[i]==currentCounterChar) currentCounter++;
        else {
            if(currentCounter % 2 != 0) odds++;
            currentCounterChar = s[i];
            currentCounter = 1;
            console.log(odds);
            if(odds>1) return "NO";
        }
    }
    if(odds>1) return "NO";

    return "YES";

}