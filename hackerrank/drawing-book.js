// challenge description
// https://www.hackerrank.com/challenges/drawing-book

/*
 * Complete the pageCount function below.
 */
function pageCount(n, p) {
    /*
     * Write your code here.
     */

    var resuln = Math.floor(n/2);
    var resulp = Math.floor(p/2);

    return Math.min(resulp, resuln-resulp);
}
