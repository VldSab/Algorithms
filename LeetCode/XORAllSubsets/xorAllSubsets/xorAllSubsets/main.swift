//
//  main.swift
//  xorAllSubsets
//
//  Created by Владимир Гуль on 25.05.2021.
//

import Foundation

func makeSetOfSubsets(_ nums: [Int]) -> [[Int]] {
    
    let nums = nums
    var setOfSubsets = [[Int]]()
    if nums.count == 1 {
        setOfSubsets += [[nums[0]]]
        return setOfSubsets
    } else {
        let temporarySet = makeSetOfSubsets(Array(nums[1...]))
        setOfSubsets = [[nums[0]]] + temporarySet
        var temporaryVal = [Int]()
        for elem in temporarySet {
            temporaryVal = elem
            temporaryVal.append(nums[0])
            setOfSubsets += [temporaryVal]
        }
    }
    return setOfSubsets
}

func subsetsXOR(setOfElem: [Int]) -> Int{
    
    let setOfSubsets = makeSetOfSubsets(setOfElem)
    var xorsArray = [Int]()
    for elem in setOfSubsets {
        xorsArray.append(elem.reduce(0, ^))
    }
    let sumArray = xorsArray.reduce(0, +)
    
    return sumArray
}

print(subsetsXOR(setOfElem: [5,1,6]))
//    print(setOfSubsets)
//
//    var xorsArray = [Int]()
//    for elem in setOfSubsets {
//        xorsArray.append(elem.reduce(0, ^))
//    }
//
//    var sumArray: Int = 0
//    sumArray = xorsArray.reduce(0, +)
//
//    return sumArray
