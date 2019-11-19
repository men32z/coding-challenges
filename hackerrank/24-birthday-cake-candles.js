//https://www.hackerrank.com/challenges/birthday-cake-candles


// Complete the birthdayCakeCandles function below.
function birthdayCakeCandles(ar) {
    var counter = 0;
    var number = 0;
    for(var i =0; i<ar.length; i++){
     if(ar[i]>number){
         number = ar[i];
         counter = 0;
     }
     if(ar[i]==number) counter++;
    }
    return counter;
}
