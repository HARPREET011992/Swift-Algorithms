import UIKit

func mergeSort(_ array: [Int]) -> [Int]{
    guard array.count > 1 else {
        return array
    }

    var midIndex = array.count / 2

    let left = mergeSort(Array(array[..<midIndex]))
    let right = mergeSort(Array(array[midIndex...]))

    return merge(left, right)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var sortedArray: [Int] = []
    var leftIndex = 0
    var rightIndex = 0

    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            sortedArray.append(left[leftIndex])
            leftIndex += 1
        } else {
            sortedArray.append(right[rightIndex])
            rightIndex += 1
        }
    }

    if leftIndex < left.count {
        sortedArray.append(contentsOf: left[leftIndex...])
    }

    if rightIndex < right.count {
        sortedArray.append(contentsOf: right[rightIndex...])
    }

    return sortedArray
}

// Example usage
var numbers = [64, 34, 25, 12, 22, 11, 90]
let sorted = mergeSort(numbers)
print("Sorted array: \(sorted)")
// Expected Output : Sorted array: [11, 12, 22, 25, 34, 64, 90]
