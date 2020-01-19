//
//  Algorithms.swift
//  Algorithms
//
//  Created by Kamil Góralski on 15/01/2020.
//  Copyright © 2020 Kamil Góralski. All rights reserved.
//

public class Algorithms {
    
    public class func linearSearch<T: Equatable>(of value: T, at elements: [T]) -> Int? {
        
        var searchedIndex: Int? = nil
        
        for enumeration in elements.enumerated() where enumeration.element == value {
            searchedIndex = enumeration.offset
        }

        return searchedIndex
    }
    
    public class func betterLinearSearch<T: Equatable>(of value: T, at elements: [T]) -> Int? {
        
        for enumeration in elements.enumerated() where enumeration.element == value {
            return enumeration.offset
        }

        return nil
    }
    
    public class func linearSearchWithSentinel<T: Equatable>(of value: T, at elements: [T]) -> Int? {
        
        var list = elements

        guard list.count > 0 else {
            return nil
        }
        
        let last = list.last
        list[list.count - 1] = value
        
        var i = 0
        
        while(list[i] != value) {
            i+=1
        }
        
        list[list.count - 1] = last!
        
        if i < elements.count - 1 || list[list.count - 1] == value {
            return i
        } else {
            return nil
        }
    }
    
    public class func factorial(of number: UInt) -> UInt {
        
        guard number > 0 else {
            return 1
        }
        
        return number * factorial(of: number - 1)
    }
    
}
