function getCount(str) {
  var vowelsCount = 0;
  var vowels = ["a", "e", "i", "o" , "u"]
  for (s of str) {
    if (vowels.indexOf(s) != -1) {
      vowelsCount += 1
    }
  }
  
  return vowelsCount;
}
console.log(getCount("Mahima"))