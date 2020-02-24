//
//  Algorithms.swift
//  Algorithms
//
//  Created by Kamil Góralski on 15/01/2020.
//  Copyright © 2020 Kamil Góralski. All rights reserved.
//

public class Algorithms {
    
    static func linearSearch<T: Comparable>(of searchValue: T, at elements: [T]) -> Int? {
        
        for enumeration in elements.enumerated() where enumeration.element == searchValue {
            return enumeration.offset
        }

        return nil
    }
    
    public static func factorial(of number: UInt) -> UInt {
        
        guard number > 0 else {
            return 1
        }
        
        return number * factorial(of: number - 1)
    }
    
    public static func binarySearch<T: Comparable>(searchValue: T, in array: [T]) -> Int? {
    
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

    public static func selectionSort<T: Comparable>(_ array: [T]) -> [T] {

        var copiedArray = array

        for i in copiedArray.enumerated() {

            var indexOfSmallestValue = i.offset

            for j in (i.offset + 1)..<copiedArray.count {

                if copiedArray[j] < copiedArray[indexOfSmallestValue] {
                    indexOfSmallestValue = j
                }
            }

            let temp = copiedArray[i.offset]
            copiedArray[i.offset] = copiedArray[indexOfSmallestValue]
            copiedArray[indexOfSmallestValue] = temp
        }

        return copiedArray
    }

    public static func insertionSort<T: Comparable>(_ array: [T]) -> [T] {

        guard !array.isEmpty else {
            return []
        }

        var copiedArray = array

        for indexToInsert in 1..<copiedArray.count {

            let valueToInsert = copiedArray[indexToInsert]
            var j = indexToInsert - 1

            while j >= 0 && copiedArray[j] > valueToInsert {
                copiedArray[j + 1] = copiedArray[j]
                j -= 1
            }

            copiedArray[j + 1] = valueToInsert
        }

        return copiedArray
    }

    public static func mergeSort<T: Comparable>(_ array: [T]) -> [T] {

        guard array.count > 1 else {
            return array
        }

        let middleIndex = array.count / 2

        let leftArray = mergeSort(Array(array[0..<middleIndex]))
        let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
        return merge(leftArray, rightArray)
    }

    private static func merge<T: Comparable>(_ leftArray: [T], _ rightArray: [T]) -> [T] {

        var leftIndex = 0
        var rightIndex = 0
        var sortedArray: [T] = []

        while leftIndex < leftArray.count && rightIndex < rightArray.count {

            if leftArray[leftIndex] <= rightArray[rightIndex] {
                sortedArray.append(leftArray[leftIndex])
                leftIndex += 1
            } else {
                sortedArray.append(rightArray[rightIndex])
                rightIndex += 1
            }
        }

        while leftIndex < leftArray.count {
            sortedArray.append(leftArray[leftIndex])
            leftIndex += 1
        }

        while rightIndex < rightArray.count {
            sortedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }

        return sortedArray
    }
}
