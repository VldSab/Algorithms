//
//  main.swift
//  SelectionSort
//
//  Created by Владимир Саберуллин on 25.04.2021.
//

import Foundation

var array: Array<Int> = [89, -2, 12, 3, 2, 1, 9, 5, 4, 12, 45, 11, 52, 41]

//function to find minimum in array
func SearchMin(_ arr: Array<Int>) -> Int{
    var indexMin: Int = 0
    var elemMin: Int = arr[0]
    for index in 0..<arr.count{
        if arr[index] < elemMin{
            indexMin = index
            elemMin = arr[index]
        }
    }
    return indexMin
}

//main algorithm
func SelectionSort(_ arr: Array<Int>) -> Array<Int>{
    var arrayToSort = arr
    var arraySorted: Array<Int> = []
    var indexMin: Int = 0
    for _ in 0..<arrayToSort.count{
        //search for minimum
        indexMin = SearchMin(arrayToSort)
        //paste minimum to the new array
        arraySorted.append(arrayToSort[indexMin])
        //remove min elem from array to sort
        arrayToSort.remove(at: indexMin)
    }
    return arraySorted
}

print(SelectionSort(array), array)

