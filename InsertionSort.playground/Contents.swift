//: Playground - noun: a place where people can play

import UIKit

public func insertionSort(initWithArray array:Array<Int>) -> Array<Int> {
    var arr = array
    let len:Int = arr.count
    for i in 0..<len {
        print(arr)
        var index = i
        let array_i = arr[i]
        while (index > 0 && arr[index - 1] > array_i) {
            arr[index] = arr[index - 1]
            index -= 1
        }
        arr[index] = array_i
    }
    return arr
}

var unsortedArray:Array = [6, 5, 3, 1, 8, 7, 2, 4]
unsortedArray = insertionSort(initWithArray: unsortedArray)
print("After sort: \(unsortedArray)")
