//: Playground - noun: a place where people can play

import UIKit

public func bubbleSort(initWithArray array: Array<Int>) -> Array<Int> {
    var arr = array
    let len:Int = arr.count
    for i in 0..<len {
        print(arr)
        for j in 1..<len - i {
            if arr[j-1] > arr[j] {
                let temp:Int = arr[j-1]
                arr[j-1] = arr[j]
                arr[j] = temp
            }
        }
    }
    return arr
}

var unsortedArray:Array = [6, 5, 3, 1, 8, 7, 2, 4]
unsortedArray = bubbleSort(initWithArray: unsortedArray)
print(unsortedArray)
