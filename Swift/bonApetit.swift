func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {

let billSum = bill.reduce(0, +)
let actualBill = (billSum - bill[k])/2
let diff = b - actualBill
if diff > 0 {
    print(diff)
} else {
    print("Bon Appetit")
}
}

bonAppetit(bill: [3,10,2,9], k: 1, b: 12)