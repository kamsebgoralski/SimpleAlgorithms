//
//  AlgorithmsTests.swift
//  AlgorithmsTests
//
//  Created by Kamil Góralski on 15/01/2020.
//  Copyright © 2020 Kamil Góralski. All rights reserved.
//

import XCTest
@testable import SimpleAlgorithms

class AlgorithmsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLinearSearchEmptyList() {
        
        let value = Algorithms.linearSearch(of: 1, at: [])
        
        XCTAssertEqual(value, nil)
    }
    
    func testLinearSearchMoreThanOneSameSearchValueOnList() {

        let value = Algorithms.linearSearch(of: 2, at: [3, 2, 2, 1])

        XCTAssertEqual(value, 1)
    }
    
    func testLinearSearchIntSearchValue() {

        let value = Algorithms.linearSearch(of: 5, at: [1, 3, 5, 6])

        XCTAssertEqual(value, 2)
    }
    
    func testLinearSearchStringSearchValue() {

        let value = Algorithms.linearSearch(of: "Two", at: ["Four", "One", "Two", "Three"])

        XCTAssertEqual(value, 2)
    }
    
    func testLinearSearchDoubleSearchValue() {

        let value = Algorithms.linearSearch(of: 0.1, at: [1, 0.4, 5, 1.0, 0.1])

        XCTAssertEqual(value, 4)
    }
    
    func testFactorialForZero() {

        let value = Algorithms.factorial(of: 0)

        XCTAssertEqual(value, 1)
    }
    
    func testFactorialForOne() {

        let value = Algorithms.factorial(of: 1)

        XCTAssertEqual(value, 1)
    }
    
    func testFactorialForSmallNumber() {

        let value = Algorithms.factorial(of: 5)

        XCTAssertEqual(value, 120)
    }
    
    func testFactorialForBigNumber() {

        let value = Algorithms.factorial(of: 20)

        XCTAssertEqual(value, 2_432_902_008_176_640_000)
    }
    
    func testBinarySearchEmptyArray() {
        
        let value = Algorithms.binarySearch(searchValue: 10, in: [])
        
        XCTAssertEqual(value, nil)
    }
    
    func testBinarySearchValueBeyondArray() {
        
        let value = Algorithms.binarySearch(searchValue: 9, in: [Int](0...8))

        XCTAssertEqual(value, nil)
    }
    
    func testBinarySearchOneElementArray() {
        
        let value = Algorithms.binarySearch(searchValue: 1, in: [1])
        
        XCTAssertEqual(value, 0)
    }
    
    func testBinarySearchValueInListRange() {
        
        let value = Algorithms.binarySearch(searchValue: 85_942, in: [Int](1...100_000))
        
        XCTAssertEqual(value, 85_941)
    }
}
