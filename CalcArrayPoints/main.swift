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

// Generic array function
func mathArray(nums: [Int], op: ([Int]) -> Int) -> Int {
	return op(nums)
}

// Regular array functions
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

func count(nums: [Int]) -> Int {
	return nums.count
}

func avg(nums: [Int]) -> Int {
	var sum = 0
	for i in 0...nums.count {
		sum += nums[i]
	}
	return sum / nums.count
}

let array : [Int] = [1, 2, 3, 4]

print("Array add: \(arrayAdd(nums: array))")
print("Array mult: \(arrayMult(nums: array))")

// Test them to see if they work. Done on Sublime. Not fully functional

func addPoint(point1: (x: Int, y: Int), point2: (x: Int, y: Int)) -> (Int, Int) {
	let x = point1.x + point2.x
	let y = point1.y + point2.y
	return (x, y)
}

func subtractPoint(point1: (x: Int, y: Int), point2: (x: Int, y: Int)) -> (Int, Int) {
	let x = point1.x - point2.x
	let y = point1.y - point2.y
	return (x, y)
}

let point1 = (x: 2, y: 2)
let point2 = (x: 2, y:2)
print("Point add: \(addPoint(point1: point1, point2: point2))")
print("Point sub: \(subtractPoint(point1: point1, point2: point2))")



