//https://www.hackerrank.com/challenges/repeated-string

// Complete the repeatedString function below.
function repeatedString(s, n) {
    //number of strings in N
    let stringInN = Math.floor(n/s.length);
    // number of characters in the string we need to complete N the last time
    let missing = n- (stringInN* s.length);
    // strings in N mutiplied by 'a's in string
    let totalAs = (stringInN * (s.match(/a/g) || []).length);
    // loop to get the a we are missing until n.
    for (var x = 0; x<missing; x++){
        if(s[x]=='a') totalAs++;
    }
    return totalAs;
}