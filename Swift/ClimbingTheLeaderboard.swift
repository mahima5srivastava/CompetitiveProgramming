/*
https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem
*/


func climbingLeaderboard(scores: [Int], alice: [Int]) -> [Int] {
var scoreArr: [Int] = []
var prevScore = 0
for score in scores  {
    if prevScore != score {
        scoreArr.append(score)
        prevScore = score
    }
}
scoreArr = Array(scoreArr.reversed())
var rankArray: [Int] = []
var lastIndex = 0
for aScore in alice {
    var rank = 0
    for i in lastIndex..<scoreArr.count {
        if scoreArr[i] == aScore {
            rank = scoreArr.count - i
            lastIndex = i
            break
        } else if scoreArr[i] > aScore {
            rank = scoreArr.count - i + 1
            lastIndex = i 
            break
        }
    }
    if rank == 0 {
        rank = 1
    }
    rankArray.append(rank)
}
return rankArray
}
