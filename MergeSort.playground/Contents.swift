//: Playground - noun: a place where people can play
//Mergesort guarantees to sort an array of N items in time proportional to N log N, no matter what the input. Its prime disadvantage is that it uses extra space proportional to N.
import UIKit

public func merge(initWithlowPoint low:Int, midPoint mid:Int, highPoint high:Int) {
    var helper:Array<Int> = unsortedArray
    //nerge array[low...mid] and array[mid+1...high]
    var i = low
    var j = mid + 1
    for k in low...high {
        if (i > mid) {
            //no item in left part
            unsortedArray[k] = helper[j]
            j+=1
        } else if (j > high) {
            //no item in right part
            unsortedArray[k] = helper[i]
            i+=1
        } else if (helper[i] > helper[j]) {
            //get smaller item in the right side
            unsortedArray[k] = helper[j]
            j+=1
        } else {
            //get smaller item in the right side
            unsortedArray[k] = helper[i]
            i+=1
        }
    }
}

public func sort(initWithlow low:Int, high:Int){
    if (high <= low) {return}
    let mid = low + (high - low) / 2
    sort(initWithlow: low, high: mid)
    sort(initWithlow: mid + 1, high: high)
    merge(initWithlowPoint: low, midPoint: mid, highPoint: high)
    print(unsortedArray)
}

public func mergeSort(){
    sort(initWithlow: 0, high: unsortedArray.count-1)
}
var unsortedArray:Array = [6, 5, 3, 1, 8, 7, 2, 4]
mergeSort()
print("After sort: \(unsortedArray)")
