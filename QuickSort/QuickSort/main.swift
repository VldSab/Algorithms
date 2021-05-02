//
//  main.swift
//  QuickSort
//
//  Created by Владимир Гуль on 02.05.2021.
//

import Foundation

//quick sort function implementation
func QuickSort(_ arr: Array<Int>) -> Array<Int> {
    if arr.count < 2 {
        return arr
    } else {
        //pivotIndex
        let pivot = arr.count/2
        //pivotElem
        let equal = arr[pivot]
        //array with elems < pivotElem
        var arrLess: Array<Int> = []
        //array with elems > pivotElem
        var arrMore: Array<Int> = []
        for (index, element) in arr.enumerated(){
            //to save repeated elements we need to do <= and thats why we
            //check index != pivot (otherwise we have overloop)
            if element <= arr[pivot] && index != pivot {
                arrLess.append(element)
            } else if element > arr[pivot]{
                arrMore.append(element)
            }
        }
        return QuickSort(arrLess) + Array(arrayLiteral: equal) + QuickSort(arrMore)
    }
}

print(QuickSort([5, 2, 3, 1, 7, 9, 23, 23, 4, 51, 56, 23, 11, 89]))
