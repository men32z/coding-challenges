//https://www.hackerrank.com/challenges/picking-numbers

function pickingNumbers(a) {
    // Write your code here
    var max = 0;
    var set = 0;
    for(var i =0; i<a.length; i++) {
        set = 0;
        for(var x =0; x<a.length; x++) {
            if(i!=x){//not the same
                if(a[i] >= a[x]){//substract from bigger
                    if((a[i]-a[x])<=1){
                        if(set==0) set =2;
                            else set++;
                    }
                }
            }
        }
        if(set > max) max = set;
    }
    return max;
}