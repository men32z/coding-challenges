//https://www.hackerrank.com/challenges/halloween-sale

// Complete the howManyGames function below.
function howManyGames(p, d, m, s) {
    // Return the number of games you can buy
    var counter = 0;
    while(s>=p){
        s= s-p;
        counter++

        if(p>m) p = p - d;
        if(p<m) p=m;

    }
    return counter;
}
