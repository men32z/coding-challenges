//https://www.hackerrank.com/challenges/lisa-workbook

// Complete the workbook function below.
function workbook(n, k, arr) {
    let special = 0;
    let page = 1;
    let pageC = 0;

    for(var i = 0; i<arr.length;i++){
        pageC = 0;
        for(var j = 0; j<arr[i]; j++){
            if(pageC>=k){
                pageC=0;
                page++;
            }
            pageC++;
            if(page==j+1)special++;
            console.log(page+' '+parseInt(j+1));
        }
        page++;
    }
    return special;
}
