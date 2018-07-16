//: Playground - noun: a place where people can play

import UIKit

//generic doubly linked list structure
class LLNode<T: Equatable> {
    var key: T?
    var next: LLNode?
    var previous: LLNode?
}

public class LinkedList<T: Equatable> {
    //create a new LLNode instance
    private var head: LLNode<T> = LLNode<T>()
    
    //append a new item to a linked list
    func addLink(key: T) {
        //establish the head node
        if (head.key == nil) {
            head.key = key;
            return;
        }
        //establish the iteration variables
        var current: LLNode? = head
        while (current != nil) {
            if (current?.next == nil) {
                let childToUse: LLNode = LLNode<T>()
                childToUse.key = key;
                childToUse.previous = current
                current!.next = childToUse;
                break;
            }
            current = current?.next
        } //end while
    } //end function
    
    //remove a link at a specific index
    func removeLinkAtIndex(index: Int) {
        var current: LLNode<T>? = head
        var trailer: LLNode<T>?
        var listIndex: Int = 0
        //determine if the removal is at the head
        if (index == 0) {
            current = current?.next
            head = current!
            return
        }
        //iterate through the remaining items
        while (current != nil) {
            if (listIndex == index) {
                //redirect the trailer and next pointers
                trailer!.next = current?.next
                current = nil
                break;
            }
            //update the assignments
            trailer = current
            current = current?.next
            listIndex += 1
        } //end while
    } //end function
    
    //print all keys for the class
    func printAllKeys() {
        let head: LLNode<T> = LLNode<T>()
        var current: LLNode! = head;
        //assign the next instance
        while (current != nil) {
            print("link item is: \(String(describing: current.key))")
            current = current.next
        }
    }
    
    //the number of linked items
    var count: Int {
        if (head.key == nil) {
            return 0
        }
        else {
            var current: LLNode = head
            var x: Int = 1
            
            //cycle through the list of items
            while ((current.next) != nil) {
                current = current.next!;
                x += 1
            }
            return x
        }
    } //end property
}
