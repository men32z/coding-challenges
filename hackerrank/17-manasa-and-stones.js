//https://www.hackerrank.com/challenges/manasa-and-stones

// Complete the stones function below.
function stones(n, a, b) {
    var values = [];
    for(var i=0; i< n; i++){
        values.push((a*(n-(i+1))) + (b*i));
        values.push((b*(n-(i+1))) + (a*i));
    }
    return [...new Set(values)].sort((a,b)=>a-b);

}
