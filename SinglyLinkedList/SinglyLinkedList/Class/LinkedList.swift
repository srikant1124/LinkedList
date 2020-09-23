//
//  LinkedList.swift
//  SinglyLinkedList
//
//  Created by Sumi on 22/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import Foundation
//try with <Any>
class Node<Element> {
    var value: Element?
    var next: Node?
    
    //DO we need Initialization
    init(value: Element?, node: Node? = nil) {
        self.value = value
        self.next = node
    }
}

class LinkedList<Element> {
    private var head: Node<Element>?
    private var tail: Node<Element>?
    private var length: Int = 0
    
    var count: Int {
        return length
    }
    
    var isEmpty: Bool {
        return head == nil
    }
    
    private func createRootNode(value: Element) {
        head = Node(value: value)
        length = 1
        tail = head
    }
    
    func insertAtBeginning(value: Element) {
        if isEmpty {
            createRootNode(value: value)
            return
        }
        let tempNode = head
        head = Node(value: value)
        head?.next = tempNode
        length += 1
    }
    
    func addAtEnd(value: Element) {
        if isEmpty {
            createRootNode(value: value)
            return
        }
        let temp = tail
        tail = Node(value: value)
        temp?.next = tail
        length += 1
    }
    
    func insert(at position: Int) {
        
    }
    
    func deleteAt(beginning value: Element) {
        removeHeadIfOneExist()
        let tempNode = head?.next
        head = tempNode
    }
    
    func deleteAt(end value: Element) {
        removeHeadIfOneExist()
        let tempNode = head
        while tempNode?.next?.next != nil {
            tail = tempNode
            break
        }
    }
    
    private func removeHeadIfOneExist() {
        if length == 1 {
            head = nil
            tail = nil
            return
        }
    }
    
    func printIt() -> [Element] {
        var tempNode = head
        var items = [Element]()
        while tempNode != nil {
            if let value = tempNode?.value {
                print("\(value)")
                items.append(value)
            }
            tempNode = tempNode?.next
        }
        return items
    }
}
