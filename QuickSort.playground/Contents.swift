import UIKit

func quickSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }

    let pivot = array[array.count / 2]
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }

    return quickSort(less) + equal + quickSort(greater)
}

let numbers = [5, 3, 8, 6, 2, 7, 4, 1]
let sorted = quickSort(numbers)
print(sorted) // [1, 2, 3, 4, 5, 6, 7, 8]
