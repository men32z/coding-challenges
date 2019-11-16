//https://www.hackerrank.com/challenges/library-fine

// Complete the libraryFine function below.
function libraryFine(d1, m1, y1, d2, m2, y2) {
    var hackos = 0;
    if(y1>y2)
        hackos = 10000;
    else if (y1==y2){
      if(m1>m2){
        hackos = 500 * (m1-m2);
      } else if (d1>d2 && m1==m2) hackos = 15 * (d1-d2);
    }
    return hackos;
}