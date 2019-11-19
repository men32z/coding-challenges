//https://www.hackerrank.com/challenges/anagram

// Complete the anagram function below.
function anagram(s) {
    if(s.length % 2 != 0) return -1;
    s = s.split('');
    var t = s.slice(0, s.length/2).sort();
    s = s.slice(s.length/2, s.length).sort();
    var counter = 0;
    for(var i = 0; i < s.length; i++){
        if(s[i]==t[i]){
            t[i]= '#';
        } else {
            var indexs = t.findIndex((x,index)=>x==s[i]);
            if(!(indexs !== -1)) {
                counter++;
            } else {
                t[indexs] = '#';
            }
        }
    }
    return counter;

}