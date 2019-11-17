//https://www.hackerrank.com/challenges/the-time-in-words

// Complete the timeInWords function below.
function timeInWords(h, m) {
    var minutes = ['o\' clock', 'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
    'eleven',
    'twelve',
    'thirteen',
    'fourteen',
    'quarter',
    'sixteen',
    'seventeen',
    'eighteen',
    'nineteen',
    'twenty',
    'twenty one',
    'twenty two',
    'twenty three',
    'twenty four',
    'twenty five',
    'twenty six',
    'twenty seven',
    'twenty eight',
    'twenty nine', 'half'];
    var text = '';
    if(h==12 && m>30) h=0;

    if(m!=15 && m!=30 && m!=45) text = ' minutes';
    if(m==1 || m==59) text = ' minute';

    if(m==0) return minutes[h]+' '+minutes[m];
    else if(m<=30) return minutes[m]+text+' past '+minutes[h];
    else return minutes[60-m]+text+' to '+minutes[h+1];

}