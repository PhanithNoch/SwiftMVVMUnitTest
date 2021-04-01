//
//  TodoListTests.swift
//  TodoListTests
//
//  Created by Admin on 4/1/21.
//

import XCTest
@testable import TodoList
class TodoListTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let manager = TodoListManager.emptyState()
       
        // if item.cout is actually equal 0 it mean success
        // otherwise it will be XCTAssertTrue failed - should be empty list of todo
        XCTAssertTrue(manager.items.count == 0,"should be empty list of todo")
        

//        XCTAssertTrue(manager.items.count == 1,"should be empty list of todo")
        
    }

  

}
