//: Playground - noun: a place where people can play

import UIKit

public func selectionSort(initWithArray array: Array<Int>) -> Array<Int> {
    var arr = array
    let len:Int = arr.count
    for i in 0..<len {
        print(arr)
        var min_index = i
        for j in i+1..<len {
            if arr[j] < arr[min_index] {
                min_index = j;
            }
        }
        let temp = arr[min_index]
        arr[min_index] = arr[i]
        arr[i] = temp
    }
    return arr
}

public func selectionSort() {
    let len:Int = unsortedArray.count
    for i in 0..<len {
        print(unsortedArray)
        var min_index = i
        for j in i+1..<len {
            if unsortedArray[j] < unsortedArray[min_index] {
                min_index = j;
            }
        }
        let temp = unsortedArray[min_index]
        unsortedArray[min_index] = unsortedArray[i]
        unsortedArray[i] = temp
    }
}

var unsortedArray:Array = [6, 5, 3, 1, 8, 7, 2, 4]
let sortedArray = selectionSort(initWithArray: unsortedArray)
print(sortedArray)
selectionSort()
print(unsortedArray)
