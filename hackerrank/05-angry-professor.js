//https://www.hackerrank.com/challenges/angry-professor

// Complete the angryProfessor function below.
function angryProfessor(k, a) {
    var studentsOnTime = 0;
    for(var i in a){
        if(a[i]<=0) studentsOnTime++;
    }
    return (studentsOnTime>=k)?'NO':'YES';

}