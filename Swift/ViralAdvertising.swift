/*
https://www.hackerrank.com/challenges/strange-advertising/problem?h_r=next-challenge&h_v=zen
*/

func viralAdvertising(n: Int) -> Int {

var day = 2
var shared = 5
var liked = shared / 2
var lastDayLiked = liked
while day <= n {
    shared = lastDayLiked * 3
    lastDayLiked = shared / 2
    liked += lastDayLiked
    day += 1

}
return liked 
}

print(viralAdvertising(n: 4))