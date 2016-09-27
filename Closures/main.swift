//
//  main.swift
//  Closures
//
//  Created by Stannis Baratheon on 27/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import Foundation

print("Hello, World!")

var sayHello = {
    ( ) -> ( ) in
    print("Hello from this closure")
}

sayHello( )

var greeting = {
    (name: String) -> ( ) in
    print("Hello \(name)")
}

greeting( "Peter" )

var maxInt = {
    (num1: Int, num2: Int) -> Int in
    return num1 > num2 ? num1 : num2
}

let highest = maxInt(10, 20)
print(highest)

func forwards( _ s1: String, _ s2: String) -> Bool {
    print("Forward was called for \(s1) and \(s2)")
    return s1 < s2
}

let letters = ["c" , "d" , "a" , "z" , "p"]
var mySortedCollection  = letters.sorted(by: forwards)
print("Using a function \(mySortedCollection)")

mySortedCollection = letters.sorted(by:{(s1: String, s2: String) -> Bool in return s1 < s2})
//print("Using a closure \(mySortedCollection)")

let my2ndSortedCollection = letters.sorted(by:{s1, s2 in return  s1 < s2})

let my3rdSortedCollection = letters.sorted(by:{$0 < $1})

let my4thSortedCollection = letters.sorted(by: < )

let my5thSortedCollection = letters.sorted()

