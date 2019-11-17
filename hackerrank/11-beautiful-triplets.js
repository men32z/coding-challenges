//https://www.hackerrank.com/challenges/beautiful-triplets

// Complete the beautifulTriplets function below.
function beautifulTriplets(d, arr) {
    var beautyT = 0;
    for(var a in arr){
        if(arr.find(x=>(x-arr[a])==d) && arr.find(x=>(x-arr[a])==(d*2))) beautyT++;
    }
    return beautyT;
}
