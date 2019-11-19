//https://www.hackerrank.com/challenges/palindrome-index

// Complete the palindromeIndex function below.
function palindromeIndex(s) {
    var index =-1, index2 = -1;
    if(s.length<3) return -1;
    for(var i=0; i<Math.floor(s.length/2); i++){
        if(s[i]!=s[s.length-i-1]){
            index = i;
            index2 = s.length-i-1;
            break;
        }
    }

    if(index != -1) {
        //check first
        var t = s.split('');
        t.splice(index,1);
        if(t.join('')==t.reverse().join('')) return index;
        //check second
        t = s.split('');
        t.splice(index2,1);
        if(t.join('')==t.reverse().join('')) return index2;
    }

    return -1;

}