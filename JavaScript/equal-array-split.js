var array, totalsum, leftSum, rightSum 
array = [0,8]
center = 0
leftSum = 0
rightSum = 0
found = false
for (var val of array) {
    rightSum += val
}

rightSum -= array[0]
center = 0

for (var i = 1; i < array.length; i++) {
    if (rightSum === leftSum) {
        center = i - 1
        found = true
        break
    }
  
    rightSum -= array[i]
    if (i > 0) {
        leftSum += array[center]
    }
    center = i     
}
if (found == true || leftSum == rightSum) {
  console.log(center)  
} else {
    console.log(-1)
}


