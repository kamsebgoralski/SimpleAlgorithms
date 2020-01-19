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
        
        let value = Algorithms.linearSearch(of: 5, at: [])
        
        XCTAssertEqual(value, nil)
    }
    
    func testLinearSearchMoreThanOneThenSameValueOnList() {

        let value = Algorithms.linearSearch(of: 5, at: [3, 5, 6, 5])

        XCTAssertEqual(value, 3)
    }
    
    func testLinearSearchMoreThanOneThenSameValueOnListOtherThanSearched() {

        let value = Algorithms.linearSearch(of: 2, at: [3, 5, 6, 5])

        XCTAssertEqual(value, nil)
    }
    
    func testLinearSearchFound() {

        let value = Algorithms.linearSearch(of: 5, at: [1, 3, 5, 6])

        XCTAssertEqual(value, 2)
    }
    
    func testLinearSearchFoundForStringType() {

        let value = Algorithms.linearSearch(of: "Kamil", at: ["Something", "Kamil and Magda", "Kamil", "Magda"])

        XCTAssertEqual(value, 2)
    }
    
    func testLinearSearchFoundForStringDouble() {

        let value = Algorithms.linearSearch(of: 0.5, at: [1, 0.4, 50, 0.5, 1.0])

        XCTAssertEqual(value, 3)
    }
    
    func testBetterLinearSearchEmptyList() {
        
        let value = Algorithms.betterLinearSearch(of: 5, at: [])
        
        XCTAssertEqual(value, nil)
    }
    
    func testBetterLinearSearchMoreThanOneThenSameValueOnList() {

        let value = Algorithms.betterLinearSearch(of: 5, at: [3, 5, 6, 5])

        XCTAssertEqual(value, 1)
    }
    
    func testBetterLinearSearchMoreThanOneThenSameValueOnListOtherThanSearched() {

        let value = Algorithms.betterLinearSearch(of: 2, at: [3, 5, 6, 5])

        XCTAssertEqual(value, nil)
    }
    
    func testBetterLinearSearchFound() {

        let value = Algorithms.betterLinearSearch(of: 5, at: [1, 3, 5, 6])

        XCTAssertEqual(value, 2)
    }
    
    func testBetterLinearSearchFoundForStringType() {

        let value = Algorithms.betterLinearSearch(of: "Kamil", at: ["Something", "Kamil and Magda", "Kamil", "Magda"])

        XCTAssertEqual(value, 2)
    }
    
    func testBetterLinearSearchFoundForStringDouble() {

        let value = Algorithms.betterLinearSearch(of: 0.5, at: [1, 0.4, 50, 0.5, 1.0])

        XCTAssertEqual(value, 3)
    }
    
    func testLinearSearchWithSentinelEmptyList() {
        
        let value = Algorithms.linearSearchWithSentinel(of: 5, at: [])
        
        XCTAssertEqual(value, nil)
    }
    
    func testLinearSearchWithSentinelMoreThanOneThenSameValueOnList() {

        let value = Algorithms.linearSearchWithSentinel(of: 5, at: [3, 5, 6, 5])

        XCTAssertEqual(value, 1)
    }
    
    func testLinearSearchWithSentinelMoreThanOneThenSameValueOnListOtherThanSearched() {

        let value = Algorithms.linearSearchWithSentinel(of: 2, at: [3, 5, 6, 5])

        XCTAssertEqual(value, nil)
    }
    
    func testLinearSearchWithSentinelFound() {

        let value = Algorithms.linearSearchWithSentinel(of: 5, at: [1, 3, 5, 6])

        XCTAssertEqual(value, 2)
    }
    
    func testLinearSearchWithSentinelFoundForStringType() {

        let value = Algorithms.linearSearchWithSentinel(of: "Kamil", at: ["Something", "Kamil and Magda", "Kamil", "Magda"])

        XCTAssertEqual(value, 2)
    }
    
    func testLinearSearchWithSentinelFoundForStringDouble() {

        let value = Algorithms.linearSearchWithSentinel(of: 0.5, at: [1, 0.4, 50, 0.5, 1.0])

        XCTAssertEqual(value, 3)
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

}
