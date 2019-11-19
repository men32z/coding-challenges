//https://www.hackerrank.com/challenges/bon-appetit

// Complete the bonAppetit function below.
function bonAppetit(bill, k, b) {
    var sum = bill.reduce((x,y)=>x+y);
    var totalf = (sum - bill[k]) / 2;
    if(totalf - b == 0)
        console.log("Bon Appetit");
    else console.log(Math.abs(totalf - b));
}