// Lesson 03 playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.
var name = "JD"
var age = 28

// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"

println("Hello \(name), you are \(age) years old.")

// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”


if age >= 21 {
    println("You can drink")
}

if age >= 18 {
    println("You can vote")
}

if age >= 16 {
    println("You can drive")
}

// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

if age >= 16 && age < 18 {
    println("You can drive. You can't vote or drink.")
}

if age >= 18 && age < 21 {
    println("You can drive, vote, and fight for your country, but you can't drink.")
}

if age >= 21 {
    println("You can drive, vote, and drink, but not at the same time, please!")
}

// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

var i = 1
while i < 51 {
    println(7 * i - 1)
    i++
}

// TODO: Create a constant called number

let number = 13

// TODO: Print whether the above number is even

if (number % 2) == 0 {
    println("number is even")
} else {
    println("number is odd")
}

// TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below

var j = 4
var fib0 = 1
var fib1 = 1
var sum = 0

while (j < 38) {
    sum = fib0 + fib1
    fib0 = fib1
    fib1 = sum
    j++
}
println(sum)


// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

println("Hello \(name), your name is \(countElements(name)) characters long!")

// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

var k = 0
var randSum = random() % 10    // used random() instead of rand() because rand() was causing errors, apparently with overflowing Integers?
while k < 100 {
    randSum = randSum + random() % 10
    k++
}
println(randSum)
