//https://www.hackerrank.com/challenges/electronics-shop

/*
 * Complete the getMoneySpent function below.
 */
function getMoneySpent(keyboards, drives, b) {
    /*
     * Write your code here.
     */
    var totalSpend = -1;
    for(var i=0; i<keyboards.length;i++){
        for(var x=0; x<drives.length;x++){
            var sum = keyboards[i]+drives[x];
            if(sum<= b && sum >totalSpend) totalSpend = sum;
        }
    }
    return totalSpend;
}