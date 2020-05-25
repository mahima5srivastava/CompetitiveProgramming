/*https://www.hackerrank.com/challenges/ctci-ice-cream-parlor/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=search*/

func whatFlavors(cost: [Int], money: Int) -> Void {
    var costDict: [Int: [Int]] = [:]
    for (i, price) in cost.enumerated() {
        if var arr = costDict[price] {
            arr.append(i + 1)
            costDict[price] = arr
        } else {
            costDict[price] = [i + 1]
        }
    }

    for cost in costDict {
        let moneyLeft = money - cost.key
        if let costArr = costDict[moneyLeft]?.sorted() {
            if cost.key == moneyLeft && costArr.count > 1 {
                print("\(costArr.first ?? 0) \(costArr.last ?? 0)")
                break
            } else if cost.key != moneyLeft {
                if (cost.value.first ?? 0) < (costArr.first ?? 0) {
                    print("\(cost.value.first ?? 0) \(costArr.first ?? 0)")
                    break
                } else {
                    print("\(costArr.first ?? 0) \(cost.value.first ?? 0)")

                    break
                }
            }
        }
    }
}