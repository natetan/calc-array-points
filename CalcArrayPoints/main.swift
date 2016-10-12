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
func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

// Standard operations
func add(left: Int, right: Int) -> Int {
    return left + right;
}

func subtract(left: Int, right: Int) -> Int {
    return left - right;
}

func multiply(left: Int, right: Int) -> Int {
    return left * right;
}

func divide(left: Int, right: Int) -> Int {
    return left / right;
}

// Multiply and divide with the math method instead
/*
 math(a: <#T##Int#>, b: <#T##Int#>, op: multiply)
 math(a: <#T##Int#>, b: <#T##Int#>, op: divide)
 */

// Generic array function
func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

// Regular array functions
func add(array: [Int]) -> Int {
    var sum = 0;
    for i in 0...array.count - 1 {
        sum += array[i]
    }
    return sum
}

func multiply(array: [Int]) -> Int {
    var product = 1;
    for i in 0...array.count - 1 {
        product *= array[i]
    }
    return product
}

func count(array: [Int]) -> Int {
    return array.count
}

func average(array: [Int]) -> Int {
    var sum = 0
    for i in 0...array.count {
        sum += array[i]
    }
    return sum / array.count
}

let array : [Int] = [1, 2, 3, 4]

print("Array add: \(add(array: array))")
print("Array mult: \(multiply(array: array))")

// Tuples

// Tried to make some of the optionals work with using the ? in some places.
// Got a lot of errors that wouldn't make the regular functions work, I removed them instead

// For ints
func add(p1: (x: Int, y: Int), p2: (x: Int, y: Int)) -> (Int, Int) {
    var x1 = p1.x
    var x2 = p2.x
    var y1 = p1.y
    var y2 = p2.y
    if (p1.x == nil) {
        x1 = 0;
    }
    if (p2.x == nil) {
        x2 = 0;
    }
    if (p1.y == nil) {
        y1 = 0;
    }
    if (p2.y == nil) {
        y2 = 0;
    }
    let x = x1 + x2
    let y = y1 + y2
    return (x, y)
}

// For doubles
func add(p1: (x: Double, y: Double), p2: (x: Double, y: Double)) -> (Double, Double) {
    var x1 = p1.x
    var x2 = p2.x
    var y1 = p1.y
    var y2 = p2.y
    if (p1.x == nil) {
        x1 = 0;
    }
    if (p2.x == nil) {
        x2 = 0;
    }
    if (p1.y == nil) {
        y1 = 0;
    }
    if (p2.y == nil) {
        y2 = 0;
    }
    let x = x1 + x2
    let y = y1 + y2
    return (x, y)
}

// For ints
func subtract(p1: (x: Int, y: Int), p2: (x: Int, y: Int)) -> (Int, Int) {
    var x1 = p1.x
    var x2 = p2.x
    var y1 = p1.y
    var y2 = p2.y
    if (p1.x == nil) {
        x1 = 0;
    }
    if (p2.x == nil) {
        x2 = 0;
    }
    if (p1.y == nil) {
        y1 = 0;
    }
    if (p2.y == nil) {
        y2 = 0;
    }
    let x = x1 - x2
    let y = y1 - y2
    return (x, y)
}

// For doubles
func subtract(p1: (x: Double, y: Double), p2: (x: Double, y: Double)) -> (Double, Double) {
    var x1 = p1.x
    var x2 = p2.x
    var y1 = p1.y
    var y2 = p2.y
    if (p1.x == nil) {
        x1 = 0;
    }
    if (p2.x == nil) {
        x2 = 0;
    }
    if (p1.y == nil) {
        y1 = 0;
    }
    if (p2.y == nil) {
        y2 = 0;
    }
    let x = x1 - x2
    let y = y1 - y2
    return (x, y)
}

let p1 = (x: 2, y:2)
let p2 = (x: 2, y:2)

let p3 = (x: 2.2, y:2.2)
let p4 = (x: 2.2, y:2.2)


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
func add(p1: Dictionary<String, Int>, p2: Dictionary<String, Int>) -> (x: Int, y: Int) {
    let x = p1["x"]! + p2["x"]!
    let y = p1["y"]! + p2["y"]!
    return (x, y)
}

// Doubles
func add(p1: Dictionary<String, Double>, p2: Dictionary<String, Double>) -> (x: Double, y: Double) {
    let x = p1["x"]! + p2["x"]!
    let y = p1["y"]! + p2["y"]!
    return (x, y)
}


// Ints
func subtract(p1: Dictionary<String, Int>, p2: Dictionary<String, Int>) -> (x: Int, y: Int) {
    let x = p1["x"]! - p2["x"]!
    let y = p1["y"]! - p2["y"]!
    return (x, y)
}

// Doubles
func subtract(p1: Dictionary<String, Double>, p2: Dictionary<String, Double>) -> (x: Double, y: Double) {
    let x = p1["x"]! - p2["x"]!
    let y = p1["y"]! - p2["y"]!
    return (x, y)
}



