var numStr = "4 5 29 54 4 0 -214 542 -64 1 -3 6 -6"
var numStrArr = numStr.split(" ")
var numArr = []
var output = ""
for (str of numStrArr) {
    numArr.push(parseInt(str))
}
numArr = numArr.sort(sortNumber)
console.log(numArr)
output = numArr[numArr.length - 1] + " " + numArr[0]
console.log(output)

function sortNumber(a, b) {
  return a - b;
}