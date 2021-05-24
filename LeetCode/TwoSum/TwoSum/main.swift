//
//  main.swift
//  TwoSum
//
//  Created by Владимир Гуль on 24.05.2021.

//MARK:- TASK
//Given an array of integers nums and an integer target, return indices of the two
//numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the
//same element twice.
//
//You can return the answer in any order.

//MARK:- SOLUTION
import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hashTable: Dictionary<Int, Int> = [:]
        
        for index in (0..<nums.count) {
            if let secondIndex = hashTable[target - nums[index]] {
                return [index, secondIndex]
            } else {
                hashTable[nums[index]] = index
            }
        }
        return []
    }

print(twoSum([5,2,6,7,1,8,9], 10))
