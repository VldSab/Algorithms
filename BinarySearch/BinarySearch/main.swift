//
//  main.swift
//  BinarySearch
//
//  Created by Владимир Гуль on 21.04.2021.
//

import Foundation

//binary search: input - value to search, array where searching
func BinarySearch(_ toFind: Int, _ arr: Array<Int>) -> Int{
    //boundaries
    var lowIndex = 0
    var highIndex = arr.count
    var mid : Int = 0
    //changing low and hight depending on the arr[mid] > or < value we finding
    while lowIndex <= highIndex{
        mid = (lowIndex + highIndex) / 2
        //we find it
        if arr[mid] == toFind {return mid}
        //changing boundaries
        if arr[mid] < toFind{
            lowIndex = mid + 1
        } else {
            highIndex = mid - 1
        }
    }
    print("Not found")
    return 0
}

//recursive binary search
func BinarySearchRecursive(_ toFind: Int, _ arr: Array<Int>) -> Int{
    var lowIndex = 0
    var highIndex = arr.count-1
    let mid = (lowIndex + highIndex)/2
    if arr[mid] < toFind {
        lowIndex = mid + 1
        return BinarySearchRecursive(toFind, Array(arr[lowIndex...highIndex])) + (mid + 1)
    } else if arr[mid] > toFind{
        highIndex = mid - 1
        return BinarySearchRecursive(toFind, Array(arr[0...highIndex]))
    } else {
        return mid
    }
}


print("Input array length")
let count_ = readLine()
print("Input number to find")
let number_ = readLine()

if let count = Int(count_!), let number = Int(number_!){
    let arr = Array(1...count)
    
    //binarySearch
    let startTime = CFAbsoluteTimeGetCurrent()
    print("Index of element - \(BinarySearch(number, arr))")
    print("Time spent \(CFAbsoluteTimeGetCurrent() - startTime)")
    
    //binarySearchRecursive
    let startTimeRecursion = CFAbsoluteTimeGetCurrent()
    print("Index of element - \(BinarySearchRecursive(number, arr))")
    print("Time spent \(CFAbsoluteTimeGetCurrent() - startTimeRecursion)")
    
} else {
    print("Incorrect data")
}


