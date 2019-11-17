//https://www.hackerrank.com/challenges/fair-rations


// Complete the fairRations function below.
function fairRations(B) {
    let changes = 0;
    for(var i = 0; i < B.length; i++){
        //if is odd change
        if(B[i] % 2 != 0){
            //change
            if(typeof B[i+1] !== 'undefined'){
                B[i]++;
                B[i+1]++;
                changes++;
            } else return 'NO';
        }

    }
    return changes*2;
}
