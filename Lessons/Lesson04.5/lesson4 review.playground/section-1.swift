// Playground - noun: a place where people can play

import UIKit
import Foundation

func printMeARand() {
    println(rand())
}
printMeARand()

func returnMeARand() -> Int32 {
    return rand()
}
returnMeARand()

func productMe(x: Int, y: Int) -> Int {
    return x * y
}
productMe(4,5)

func doubleBoth(i: Int32, j: Int32) -> (Int32,Int32) {
    let littleRand = rand() % 10
    return (i * littleRand, j * littleRand)
}
doubleBoth(4,5)

// lesson 4.5
func foo(str: String) -> Bool {
    
}