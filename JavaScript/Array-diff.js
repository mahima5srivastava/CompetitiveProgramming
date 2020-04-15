var arr1 = [4,3,6,2,9,1,1,3,0]
var arr2 = [1,4]
var outpuArr = []

for (value of arr1) {
    if (!arr2.includes(value)) {
        outpuArr.push(value)
    }
}
console.log(outpuArr)