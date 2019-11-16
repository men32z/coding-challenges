//https://www.hackerrank.com/challenges/equality-in-a-array

// Complete the equalizeArray function below.
function equalizeArray(arr) {
    var current = 0;
    var minimum = 101;
    for(var a in arr){
        current = 0;
        for(var b in arr){
            if(arr[a] != arr[b] && a!=b) current++;
        }
        if(current<minimum) minimum = current;
    }
    return minimum;

}