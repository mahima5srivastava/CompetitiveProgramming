var string = "abab"

for (var i = 1; i < string.length; i++) {
    if (string.length % i === 0) {
        let str = string.substring(0, i)
        if (str.repeat(string.length / i) == string) {
            console.log("found")
        }
    }
   
}