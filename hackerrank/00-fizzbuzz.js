process.stdin.resume();
process.stdin.setEncoding("ascii");
process.stdin.on("data",
function (input) {
  for (i=1; i<=100; i++){
    r=i%3===0?'Fizz':'';
    r+=i%5===0?'Buzz':'';
    console.log(r||i);
  }
});