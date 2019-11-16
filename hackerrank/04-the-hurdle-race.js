//https://www.hackerrank.com/challenges/the-hurdle-race

// Complete the hurdleRace function below.
function hurdleRace(k, height) {
    var diff = Math.max(...height) - k
    if(diff < 0) diff =0;
    return diff;
}
