//https://www.hackerrank.com/challenges/insertionsort1


// Complete the insertionSort1 function below.
function insertionSort1(n, arr) {
    var print = '';
    var temp = 0;
    for(var i = n-1; i>=0; i--){
        if(typeof arr[i-1] !== 'undefined' && arr[i]<=arr[i-1]) {
            temp = arr[i];
            arr[i] = arr[i-1];
            console.log(arr.join(' '));
            arr[i-1] = temp;
        } else {
            console.log(arr.join(' '));
            break;
        }
    }

}