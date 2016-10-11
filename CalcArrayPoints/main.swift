//
//  main.swift
//  CalcArrayPoints
//
//  Created by Yulong Tan on 10/6/16.
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

// Tuples

// Tried to make some of the optionals work with using the ? in some places.
// Got a lot of errors that wouldn't make the regular functions work, I removed them instead

// For ints
func addPoint(point1: (x: Int, y: Int), point2: (x: Int, y: Int)) -> (Int, Int) {
    var x1 = point1.x
    var x2 = point2.x
    var y1 = point1.y
    var y2 = point2.y
    if (point1.x == nil) {
        x1 = 0;
    }
    if (point2.x == nil) {
        x2 = 0;
    }
    if (point1.y == nil) {
        y1 = 0;
    }
    if (point2.y == nil) {
        y2 = 0;
    }
    let x = x1 + x2
    let y = y1 + y2
    return (x, y)
}

// For doubles
func addPoint(point1: (x: Double, y: Double), point2: (x: Double, y: Double)) -> (Double, Double) {
    var x1 = point1.x
    var x2 = point2.x
    var y1 = point1.y
    var y2 = point2.y
    if (point1.x == nil) {
        x1 = 0;
    }
    if (point2.x == nil) {
        x2 = 0;
    }
    if (point1.y == nil) {
        y1 = 0;
    }
    if (point2.y == nil) {
        y2 = 0;
    }
    let x = x1 + x2
    let y = y1 + y2
    return (x, y)
}

// For ints
func subtractPoint(point1: (x: Int, y: Int), point2: (x: Int, y: Int)) -> (Int, Int) {
    var x1 = point1.x
    var x2 = point2.x
    var y1 = point1.y
    var y2 = point2.y
    if (point1.x == nil) {
        x1 = 0;
    }
    if (point2.x == nil) {
        x2 = 0;
    }
    if (point1.y == nil) {
        y1 = 0;
    }
    if (point2.y == nil) {
        y2 = 0;
    }
    let x = x1 - x2
    let y = y1 - y2
    return (x, y)
}

// For doubles
func subtractPoint(point1: (x: Double, y: Double), point2: (x: Double, y: Double)) -> (Double, Double) {
    var x1 = point1.x
    var x2 = point2.x
    var y1 = point1.y
    var y2 = point2.y
    if (point1.x == nil) {
        x1 = 0;
    }
    if (point2.x == nil) {
        x2 = 0;
    }
    if (point1.y == nil) {
        y1 = 0;
    }
    if (point2.y == nil) {
        y2 = 0;
    }
    let x = x1 - x2
    let y = y1 - y2
    return (x, y)
}

let point1 = (x: 2, y:2)
let point2 = (x: 2, y:2)

let point3 = (x: 2.2, y:2.2)
let point4 = (x: 2.2, y:2.2)

print("Point add: \(addPoint(point1: point3, point2: point4))")

print("Point add: \(addPoint(point1: point1, point2: point2))")
print("Point sub: \(subtractPoint(point1: point1, point2: point2))")

// Dictionary

let xDict = [
    "x" : 2,
    "y" : 2
]

let yDict = [
    "x" : 2,
    "y" : 2
]

// Ints
func addPointDictionary(point1: Dictionary<String, Int>, point2: Dictionary<String, Int>) -> (x: Int, y: Int) {
    let x = point1["x"]! + point2["x"]!
    let y = point1["y"]! + point2["y"]!
    return (x, y)
}

// Doubles
func addPointDictionary(point1: Dictionary<String, Double>, point2: Dictionary<String, Double>) -> (x: Double, y: Double) {
    let x = point1["x"]! + point2["x"]!
    let y = point1["y"]! + point2["y"]!
    return (x, y)
}


// Ints
func subtractPointDictionary(point1: Dictionary<String, Int>, point2: Dictionary<String, Int>) -> (x: Int, y: Int) {
    let x = point1["x"]! - point2["x"]!
    let y = point1["y"]! - point2["y"]!
    return (x, y)
}

// Doubles
func subtractPointDictionary(point1: Dictionary<String, Double>, point2: Dictionary<String, Double>) -> (x: Double, y: Double) {
    let x = point1["x"]! - point2["x"]!
    let y = point1["y"]! - point2["y"]!
    return (x, y)
}

print("Dict add: \(addPointDictionary(point1: xDict, point2: yDict))")
print("Dict sub: \(subtractPointDictionary(point1: xDict, point2: yDict))")


