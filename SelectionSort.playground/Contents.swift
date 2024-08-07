import UIKit

func selectionSort(_ array: inout [Int]) {
    for i in 0 ..< array.count - 1 {
        var minIndex = i
        for j in i+1 ..< array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            array.swapAt(i, minIndex)
        }
    }
}

// Example usage:
var numbers = [64, 25, 12, 22, 11]
selectionSort(&numbers)
print("Sorted array: \(numbers)")
