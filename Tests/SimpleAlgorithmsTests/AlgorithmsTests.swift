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

    func testLinearSearchIntSearchValue() {
        XCTAssertEqual(Algorithms.linearSearch(of: 5, at: [1, 3, 5, 6]), 2)
    }

    func testLinearSearchEmptyList() {
        XCTAssertEqual(Algorithms.linearSearch(of: 1, at: []), nil)
    }

    func testLinearSearchMoreThanOneSameSearchValueOnList() {
        XCTAssertEqual(Algorithms.linearSearch(of: 2, at: [3, 2, 2, 1]), 1)
    }

    func testFactorialForZero() {
        XCTAssertEqual(Algorithms.factorial(of: 0), 1)
    }
    
    func testFactorialForOne() {
        XCTAssertEqual(Algorithms.factorial(of: 1), 1)
    }
    
    func testFactorialForSmallNumber() {
        XCTAssertEqual(Algorithms.factorial(of: 5), 120)
    }
    
    func testFactorialForBigNumber() {
        XCTAssertEqual(Algorithms.factorial(of: 20), 2_432_902_008_176_640_000)
    }
    
    func testBinarySearchValueBeyondArray() {
        XCTAssertEqual(Algorithms.binarySearch(searchValue: 9, in: [Int](0...8)), nil)
    }

    func testBinarySearchEmptyArray() {
        XCTAssertEqual(Algorithms.binarySearch(searchValue: 10, in: []), nil)
    }
    
    func testBinarySearchOneElementArray() {
        XCTAssertEqual(Algorithms.binarySearch(searchValue: 1, in: [1]), 0)
    }
    
    func testBinarySearchValueInListRange() {
        XCTAssertEqual(Algorithms.binarySearch(searchValue: 85_942, in: [Int](1...100_000)), 85_941)
    }

    func testSelectionSort() {
        XCTAssertEqual(Algorithms.selectionSort([8, 4, 3, 1, 5, 2, 9, 6, 7]), [1, 2, 3, 4, 5, 6, 7, 8, 9])
    }

    func testSelectionSortEmptyArray() {
        XCTAssertEqual(Algorithms.selectionSort([Int]()), [Int]())
    }

    func testSelectionSortRepeatedValues() {
        XCTAssertEqual(Algorithms.selectionSort([8, 4, 3, 1, 5, 2, 9, 6, 7, 1, 5, 8]), [1, 1, 2, 3, 4, 5, 5, 6, 7, 8, 8, 9])
    }

    func testInsertionSort() {
        XCTAssertEqual(Algorithms.insertionSort([8, 4, 3, 1, 5, 2, 9, 6, 7]), [1, 2, 3, 4, 5, 6, 7, 8, 9])
    }

    func testInsertionSortEmptyArray() {
        XCTAssertEqual(Algorithms.insertionSort([Int]()), [Int]())
    }

    func testInsertionSortRepeatedValues() {
        XCTAssertEqual(Algorithms.insertionSort([8, 4, 3, 1, 5, 2, 9, 6, 7, 1, 5, 8]), [1, 1, 2, 3, 4, 5, 5, 6, 7, 8, 8, 9])
    }
}
