//https://www.hackerrank.com/challenges/find-the-median

// Complete the findMedian function below.
function findMedian(arr) {
    var sorted = arr.sort((x,y)=>x-y);
    //console.log(sorted)
    return sorted[(arr.length/2) - 0.5];
}
