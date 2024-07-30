import UIKit

func linearSearch(array: [Int], target: Int) -> Int? {
    for (index, element) in array.enumerated() {
        if element == target {
            return index
        }
    }
    return nil
}

// Example usage:
let numbers = [10, 23, 45, 70, 11, 15]
if let index = linearSearch(array: numbers, target: 70) {
    print("Element found at index \(index)")
} else {
    print("Element not found")
}
