//https://www.hackerrank.com/challenges/happy-ladybugs

// Complete the happyLadybugs function below.
function happyLadybugs(b) {
    var bugs = b.split('');
    var underscores, allhappy, someUnhappy = false;
    if(bugs.findIndex(x=>x=='_') != -1) underscores = true;
        else underscores = false;
    if(bugs.findIndex(x=>x!='_') == -1) return "YES";
        else allhappy = false;
    for(var i = 0; i<bugs.length; i++){
        if(bugs[i]!= bugs[i-1] && bugs[i]!= bugs[i+1] && bugs[i] != '_'){
            if(bugs.findIndex((x,index)=>x==bugs[i]&&i!=index) == -1) return "NO";
                else someUnhappy = true;
        }
    }

    if(!underscores&&someUnhappy) return "NO";
        else return "YES";

}
