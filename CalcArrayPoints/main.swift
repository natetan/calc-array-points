//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 10/6/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

print("Hello, World!")

// Generic math function
func math(a: Int, b: Int, op: (Int, Int) -> Int) -> Int {
    return op(a, b)
}

// Standard operations
func add(a: Int, b: Int) -> Int {
    return a + b;
}

func subtract(a: Int, b: Int) -> Int {
    return a - b;
}

func multiply(a: Int, b: Int) -> Int {
    return a * b;
}

func divide(a: Int, b: Int) -> Int {
    return a / b;
}

// Multiply and divide with the math method instead
/*
math(a: <#T##Int#>, b: <#T##Int#>, op: multiply)
math(a: <#T##Int#>, b: <#T##Int#>, op: divide)
 */


func arrayAdd(nums: [Int]) -> Int {
    var sum = 0;
    for i in 0...nums.count - 1 {
        sum += nums[i]
    }
    return sum
}

func arrayMult(nums: [Int]) -> Int {
    var product = 1;
    for i in 0...nums.count - 1 {
        product *= nums[i]
    }
    return product
}

let array : [Int] = [1, 2, 3, 4]

print("Array add: \(arrayAdd(nums: array))")
print("Array mult: \(arrayMult(nums: array))")

