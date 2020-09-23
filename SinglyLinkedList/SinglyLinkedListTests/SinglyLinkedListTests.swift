//
//  SinglyLinkedListTests.swift
//  SinglyLinkedListTests
//
//  Created by Sumi on 22/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import XCTest
@testable import SinglyLinkedList

class SinglyLinkedListTests: XCTestCase {
    let list = LinkedList<Int>()
    
    func testExample() {
        list.insertAtBeginning(value: 2)
        list.insertAtBeginning(value: 3)
        list.insertAtBeginning(value: 4)
        
        list.addAtEnd(value: 5)
        list.addAtEnd(value: 6)
        list.addAtEnd(value: 7)
        
        let items = list.printIt()
        XCTAssertEqual(items, [4,3,2,5,6,7], "It should match")
        XCTAssertEqual(items.count, list.count, "Count Should match")
    }
}
