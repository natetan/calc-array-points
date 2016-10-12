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
func add(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    var result : (x: Int, y: Int);
    result.x = add(left: p1.0, right: p2.0);
    result.y = add(left: p1.1, right: p2.1);
    return result;
}

func add(p1 : (Double, Double), p2 : (Double, Double)) -> (Double, Double) {
    var result : (x: Double, y: Double);
    result.x = add(left: p1.0, right: p2.0);
    result.y = add(left: p1.1, right: p2.1);
    return result;
}

func subtract(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    var result : (x: Int, y: Int);
    result.x = subtract(left: p1.0, right: p2.0);
    result.y = subtract(left: p1.1, right: p2.1);
    return result;
}

func subtract(p1 : (Double, Double), p2 : (Double, Double)) -> (Double, Double) {
    var result : (x: Double, y: Double);
    result.x = subtract(left: p1.0, right: p2.0);
    result.y = subtract(left: p1.1, right: p2.1);
    return result;
}

// Non-two-arity handling

func add(_ points: (Int, Int)...) -> (Int, Int) {
    var result : (x: Int, y: Int) = (0, 0);
    for point in points {
        result.x += point.0;
        result.y += point.1;
    }
    return result;
}

func add(_ points: (Double, Double)...) -> (Double, Double) {
    var result : (x: Double, y: Double) = (0, 0);
    for point in points {
        result.x += point.0;
        result.y += point.1;
    }
    return result;
}

func subtract(_ points: (Int, Int)...) -> (Int, Int) {
    var result : (x: Int, y: Int) = (0, 0);
    for point in points {
        result.x -= point.0;
        result.y -= point.1;
    }
    return result;
}

func subtract(_ points: (Double, Double)...) -> (Double, Double) {
    var result : (x: Double, y: Double) = (0, 0);
    for point in points {
        result.x -= point.0;
        result.y -= point.1;
    }
    return result;
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
func add(p1 : [String : Int], p2 : [String : Int]) -> [String : Int]? {
    var result = [
        "x" : Int(),
        "y" : Int()
    ]
    if (p1["x"] != nil && p1["y"] != nil && p2["x"] != nil && p2["y"] != nil) {
        result["x"] = p1["x"]! + p2["x"]!;
        result["y"] = p1["y"]! + p2["y"]!;
    }
    return result
}

// Doubles
func add(p1 : [String : Double], p2 : [String : Double]) -> [String : Double]? {
    var result = [
        "x" : Double(),
        "y" : Double()
    ]
    result["x"] = p1["x"]! + p2["x"]!;
    result["y"] = p1["y"]! + p2["y"]!;
    return result
}


// Ints
func subtract(p1 : [String : Int], p2 : [String : Int]) -> [String : Int]? {
    var result = [
        "x" : Int(),
        "y" : Int()
    ]
    result["x"] = p1["x"]! - p2["x"]!;
    result["y"] = p1["y"]! - p2["y"]!;
    return result
}

// Doubles

func subtract(p1 : [String : Double], p2 : [String : Double]) -> [String : Double]? {
    var result = [
        "x" : Double(),
        "y" : Double()
    ]
    result["x"] = p1["x"]! - p2["x"]!;
    result["y"] = p1["y"]! - p2["y"]!;
    return result
}