// Playground - noun: a place where people can play
// Lesson 04

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times
func sayHello(var x: Int) {
    for i in 1...x {
        println("Hello World!")
    }
}
sayHello(10)

// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func numberOfTimes(var i: Int) {
    for i in 1...i {
        println("Hit this line \(i) times!")
    }
}
numberOfTimes(20)


// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

func helloString (var str:String)
{
    println("Hello \(str)")
}

helloString("World")

// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func helloOptional (var str:String?)
{
    if let s = str
    {
        println("Hello \(str!)")
    } else {
        println("Hello World")
    }
}

helloOptional("Class")
helloOptional(nil)

// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.

func fibNumber (n:Int) -> Int {
    var fibs = [Int:Int]()
    
        if (n == 2) {
            return 1
        } else if (n == 1) {
            return 0
        } else {
            if let first = fibs[n-2] {
                if let second = fibs[n-1] {
                    return first + second
                } else {
                    fibs[n-1] = fibNumber(n-1)
                    return fibs[n-1]! + fibs[n-2]!
                }
            } else {
                if let second = fibs[n-1] {
                    fibs[n-2] = fibNumber(n-2)
                    return fibs[n-2]! + second
                } else {
                    fibs[n-1] = fibNumber(n-1)
                    fibs[n-2] = fibNumber(n-2)
                    return fibs[n-1]! + fibs[n-2]!
                }
            }
        }
}

fibNumber(6)


// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

func fibSum (x:Int) -> Int {
    if x==0 {
        return 0
    } else {
        return fibNumber(x) + fibSum(x-1)
    }
}


// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

func numberType (testNumber:Int) -> String
{
    
    if testNumber == 0
    {
        println("neither")
        return "non-prime, non-composite"
    } else if testNumber == 1
    {
        println("neither")
        return "non-prime, non-composite"
    } else
    {
        var divisor = testNumber / 2
        if testNumber % divisor == 0
        {
            println("composite")
            return "composite"
        } else
        {
            while divisor != 1
            {
                if testNumber % divisor == 0
                {
                    println("composite")
                    return "composite"
                }
                divisor--

            }
            println("prime")
            return "prime"
        }
    }
}

numberType(15)

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

func fibAndPrime() {
    for i in 1...13 {
        var fibNum = fibNumber(i)
        println(numberType(i))
        println("Fibonacci number \(i) is a \(numberType(fibNum)) number: \(fibNum)")
        
    }
}

//fibAndPrime()

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a loat, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

func totalBill(amount: Float, tip: Float) -> (Float, Float) {
    var tip = amount * (tip/100)
    var total = amount + tip
    return (total, tip)
}

totalBill(120.35,20)


// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

func reverseRepeat(word: String) -> String {
    var reversedString:String = ""
    for char in word {
        reversedString = String(char) + reversedString
    }
    return(word + reversedString)
    
}

reverseRepeat("racecars")


func palindrome(word: String) -> String {
    var reversedString:String = ""
    for char in word {
        reversedString = String(char) + reversedString
    }
    return(reversedString)
    
}

palindrome("racecar ")

// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

func searchArray(myArray: Array<String>, term: String) -> Bool {
    for str in myArray {
        if term == str {
            return true
        }
    }
    return false
}

searchArray(["stupid", "and", "contagious"],"stupid")
searchArray(["stupid", "and", "contagious"],"entertainers")


// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).
func isPalindrome(str:String) -> Bool
{
    if (str == palindrome(str))
    {
        return true
    } else {
        return false
    }
}

isPalindrome("hello")
isPalindrome("racecar")


// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings


// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.








