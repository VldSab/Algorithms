//
//  main.swift
//  RecursionSum
//
//  Created by Владимир Гуль on 30.04.2021.
//

//this is the task from the book Grokking Algorithms
import Foundation

func RecursionSum(_ arr: Array<Int>) -> Int{
    var sumOfArray: Int = 0
    //if we have one elem then this elem is actualy sum
    if arr.count == 1 {
        sumOfArray += arr[0]
    //else we go to next part of array and call RecursionSum recursively
    } else {
        sumOfArray = arr[0] + RecursionSum(Array(arr[1...arr.count-1]))
    }
    return sumOfArray
}

let arr = [1, 2, 3]
print(RecursionSum(arr))
