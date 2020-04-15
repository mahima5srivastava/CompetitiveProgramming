var value = 12345
var nStr = value.toString()
var output = ""
for (var i = 0; i < nStr.length; i++) {

    var intVal = parseInt(nStr[i]) * Math.pow(10, (nStr.length - 1 - i))
    if (output == "") {
        output = intVal.toString()
    } else {
        output = output + " + " + intVal
    }
    
}
     
console.log(output)
