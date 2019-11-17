//https://www.hackerrank.com/challenges/3d-surface-area

// Complete the surfaceArea function below.
function surfaceArea(A) {
    var surface = 0;
    for(var i = 0; i<A.length; i++){
        // important here look at the A[i] length not A
        for(var j = 0; j<A[i].length; j++){
            //bottom and top
            if(A[i][j]>=1) surface = surface +2;

            //top
            if(i<=0)
                surface = surface +  A[i][j];
            else
                surface = surface + Math.abs(A[i][j]-A[i-1][j]);


            //rigth
            // important here look at the A[i] length not A
            if(j>=A[i].length-1)
                surface = surface +  A[i][j];
            else
                surface = surface + Math.abs(A[i][j]-A[i][j+1]);

            //for bottom and left just sum if is the first or last.
            //bottom
            if(i>=A.length-1)
                surface = surface +  A[i][j];
            //left
            if(j<=0)
                surface = surface +  A[i][j];

        }
    }
    return surface;

}
