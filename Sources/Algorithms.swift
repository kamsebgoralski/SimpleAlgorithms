//
//  Algorithms.swift
//  Algorithms
//
//  Created by Kamil Góralski on 15/01/2020.
//  Copyright © 2020 Kamil Góralski. All rights reserved.
//

public class Algorithms {
    
    public class func linearSearch<T: Comparable>(of searchValue: T, at elements: [T]) -> Int? {
        
        for enumeration in elements.enumerated() where enumeration.element == searchValue {
            return enumeration.offset
        }

        return nil
    }
    
    public class func factorial(of number: UInt) -> UInt {
        
        guard number > 0 else {
            return 1
        }
        
        return number * factorial(of: number - 1)
    }
    
    public class func binarySearch<T: Comparable>(searchValue: T, in array: [T]) -> Int? {
    
        return recursionBinarySearch(searchValue: searchValue, in: array, leftIndex: 0, rightIndex: array.count - 1)
    }
    
    private class func recursionBinarySearch<T: Comparable>(searchValue: T, in array: [T], leftIndex: Int, rightIndex: Int) -> Int? {
        
        guard leftIndex <= rightIndex else {
            return nil
        }
        
        let middleIndex = (leftIndex + rightIndex) / 2

        if array[middleIndex] == searchValue {
            return middleIndex
        } else if array[middleIndex] > searchValue {
            return recursionBinarySearch(searchValue: searchValue, in: array, leftIndex: leftIndex, rightIndex: middleIndex - 1)
        } else {
            return recursionBinarySearch(searchValue: searchValue, in: array, leftIndex: middleIndex + 1, rightIndex: rightIndex)
        }
    }
    
}
