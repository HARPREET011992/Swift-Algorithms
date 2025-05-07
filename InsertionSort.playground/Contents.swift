import UIKit

func insertionSort(_ array: inout [Int]) {
    for i in 1 ..< array.count {
        var j = i
        while j > 0 && array[j] < array[j - 1] {
            array.swapAt(j, j - 1)
            j -= 1
        }
    }
}

// Example usage:
var numbers = [64, 25, 12, 22, 11]
insertionSort(&numbers)
print("Sorted array: \(numbers)")
