
//
//  BubbleSort.swift
//
//  Created by Val I on 2025-03-01.
//  Version 1.0
//  Copyright (c) 2025 Val I. All rights reserved.
//
//  The BubbleSort program makes a random array.
//  it displays an array of 10 integers,
//  then displays the array in numerical order using bubble sort,

import Foundation

// Bubble sort function
func bubbleSort(_ array: [Int]) -> [Int] {
    var array = array 
    let n = array.count
    for i in 0..<n {
        for j in 0..<(n - i - 1) {
            if array[j] > array[j + 1] {
                // Swap the elements
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
    return array 
}

let MAXARRSIZE = 10
var randomArray = Array(repeating: 0, count: MAXARRSIZE)

// Populate the array with random numbers
for i in 0..<MAXARRSIZE {
    randomArray[i] = Int.random(in: 1...100)
}

// Print the original array
print("The original array is \(randomArray)")

// Sort the array
randomArray = bubbleSort(randomArray)
// Print the sorted array
print("The sorted array is \(randomArray)")