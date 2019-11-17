//https://www.hackerrank.com/challenges/encryption

// Complete the encryption function below.
function encryption(s) {
    let rows = Math.floor(Math.sqrt(s.length));
    let columns = 0;
    if(Math.sqrt(s.length) % 1 !==0) columns = rows+1;
        else columns = rows;
    if((rows * columns) < s.length) rows =columns;
    s = s.split('');
    var r=[];
    for(let j = 0; j<columns; j++){
        for(let i=0; i< rows; i++){
            r.push(s[(i*columns)+j]);
        }
        r.push(' ');
    }
    return r.join('');
}