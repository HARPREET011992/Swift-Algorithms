import UIKit

func bubbleSort(_ array: inout [Int]) {
    
    var isSorted = false
    var counter = 0
    
    // // If no two elements were swapped in the inner loop, then the array is already sorted
    while !isSorted {
        isSorted = true
        
        // Traverse the array up to the unsorted part
        for i in 0 ..< array.count - 1 - counter {
            if array[i] > array[i + 1] {
                
                // Swap elements if they are in the wrong order
                array.swapAt(i,i+1)
                isSorted = false
            }
        }
        counter += 1
    }
}

// Example usage
var numbers = [64, 34, 25, 12, 22, 11, 90]
bubbleSort(&numbers)
print("Sorted array: \(numbers)")
