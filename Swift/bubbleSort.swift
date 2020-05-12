/*
Consider the following version of Bubble Sort:

for (int i = 0; i < n; i++) {
    
    for (int j = 0; j < n - 1; j++) {
        // Swap adjacent elements if they are in decreasing order
        if (a[j] > a[j + 1]) {
            swap(a[j], a[j + 1]);
        }
    }
    
}
Given an array of integers, sort the array in ascending order using the Bubble Sort algorithm above. Once sorted, print the following three lines:

Array is sorted in numSwaps swaps., where  is the number of swaps that took place.
First Element: firstElement, where  is the first element in the sorted array.
Last Element: lastElement, where  is the last element in the sorted array.
*/

func countSwaps(a: [Int]) -> Void {
    var a = a
var swapCounts = 0
for i in 0..<a.count {
    
    for j in 0..<a.count {
        // Swap adjacent elements if they are in decreasing order
        if j+1 < a.count, (a[j] > a[j + 1]) {
            swapCounts += 1
            var temp = a[j]
            a[j] = a[j + 1]
            a[j + 1] = temp
        }
    }  
}
print("Array is sorted in \(swapCounts) swaps.")
print("First Element: \(a[0])")
print("Last Element: \(a[a.count - 1])")
}
