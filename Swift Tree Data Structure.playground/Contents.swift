//: Playground - noun: a place where people can play

import UIKit

class Node<T> :CustomStringConvertible {
    var description: String {
        var text = "\(value)"
        
        if !children.isEmpty {
            //recursively append children's description
            text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
            
//            text += " {"
//            for child in children {
//                if children.last?.value != child.value {
//                    text += child.description + ", "
//                } else {
//                    text += child.description
//                }
//            }
//            text += "} "
        }
        return text
    }
    
//    var value: String
    var value: T
    //declare children as an array of nodes
    var children: [Node] = [] // add the children property
    weak var parent: Node? // add the parent property
    
//    init(value: String) {
//    self.value = value
//    }
    init(value: T) {
        self.value = value
    }
    
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
    
}

let beverages = Node(value: "beverages")

let hotBeverage = Node(value: "hot")
let coldBeverage = Node(value: "cold")

let tea = Node(value: "tea")
let coffee = Node(value: "coffee")
let cocoa = Node(value: "cocoa")

let blackTea = Node(value: "black")
let greenTea = Node(value: "green")
let chaiTea = Node(value: "chai")

let soda = Node(value: "soda")
let milk = Node(value: "milk")

let gingerAle = Node(value: "ginger ale")
let bitterLemon = Node(value: "bitter lemon")

beverages.add(child: hotBeverage)
beverages.add(child: coldBeverage)

hotBeverage.add(child: tea)
hotBeverage.add(child: coffee)
hotBeverage.add(child: cocoa)

coldBeverage.add(child: soda)
coldBeverage.add(child: milk)

tea.add(child: blackTea)
tea.add(child: greenTea)
tea.add(child: chaiTea)

soda.add(child: gingerAle)
soda.add(child: bitterLemon)

//print(beverages) // <- try to print it!

extension Node where T: Equatable{
    // 1
//    func search(value: String) -> Node? {
    func search(value: T) -> Node? {
        // 2
        if value == self.value {
            return self
        }
        // 3
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
        // 4
        return nil
    }
}


beverages.search(value: "cocoa")//returns the "cocoa" node
beverages.search(value: "chai")// returns the "chai" node
beverages.search(value: "bubbly")// returns nil
