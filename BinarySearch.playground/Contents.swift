import UIKit


func binarySearch(_ nums: [Int], _ target: Int) -> Int {
    // if nums array doesn't contains target value, return imediately
    if nums.count < 0 {
        return -1
    }
    
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        
        // find mid number
        var mid = (left + right) / 2
        
        // find middle value
        var midValue = nums[mid]
        
        // target value found
        if midValue == target {
            return mid
        } 
        // target value is less than middle value, move right to left
        else if midValue > target {
            right = mid - 1
        } 
        // target value is more than middle value, move left to right
        else {
            left = mid + 1
        }
    }
    return -1
}

let numbers = [1, 3, 5, 6, 7, 9, 23, 45, 67, 76, 90]
let result = binarySearch(numbers, 45)
if result > -1 {
    print("Result status -> Found at Index: \(result)th !!!")
} else {
    print("Result not found !!!")
}
