//https://www.hackerrank.com/challenges/chocolate-feast

// Complete the chocolateFeast function below.
function chocolateFeast(n, c, m) {
    let wrappers = Math.floor(n/c);
    let totalChoco = wrappers;
    while(wrappers >= m){
        if(wrappers>m){
            let choco = Math.floor(wrappers/m);
            totalChoco = totalChoco + choco;
            wrappers = choco + (wrappers % m);

        } else {
            totalChoco++;
            wrappers = 0;

        }
    }
    return totalChoco;
}