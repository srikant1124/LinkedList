//
//  ViewController.swift
//  SinglyLinkedList
//
//  Created by Sumi on 22/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let list = LinkedList<Int>()
        list.insertAtBeginning(value: 3)
        list.insertAtBeginning(value: 2)
        list.insertAtBeginning(value: 1)
        list.addAtEnd(value: 4)
        list.addAtEnd(value: 5)
        list.addAtEnd(value: 6)
        list.printIt()
    }
}

struct Pair<T1, T2> {
    var first: T1
    var second: T2
}
