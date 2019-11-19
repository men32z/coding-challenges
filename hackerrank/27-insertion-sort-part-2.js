//https://www.hackerrank.com/challenges/insertionsort2

// Complete the insertionSort2 function below.
function insertionSort2(n, arr) {
    var temp = 0;
    for(var i =1; i< n; i++){
        var j = i;
        while(j>0 && arr[j]<arr[j-1]) {
            temp = arr[j-1];
            arr[j-1] = arr[j];
            arr[j] = temp;
            j--;
        }
        console.log(arr.join(' '));
    }

}