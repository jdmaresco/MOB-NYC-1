//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FibonacciAdder {
    
    func fibonacciNumberAtIndex(i: Int) -> Int {
        
        if (i == 1) {
            return 0
        } else if (i == 2) {
            return 1
        } else if (i > 2) {
            return (self.fibonacciNumberAtIndex(i - 2) + self.fibonacciNumberAtIndex(i - 1))
        } else {
            return 0
        }
    }
}

class FourthViewController: UIViewController {
/*
    TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    
    
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
    
    @IBOutlet weak var fibIndex: UITextField!
    
    @IBOutlet weak var fibValue: UILabel!
    
    @IBAction func fibCalculateButton(sender: AnyObject) {
        var fibIndexValue:Int? = fibIndex.text.toInt()

        if let fibIndexValue2 = fibIndexValue {
            let myFavoriteFib = FibonacciAdder()
        
            fibValue.text = String(myFavoriteFib.fibonacciNumberAtIndex(fibIndexValue!))
        
        }
    }
    
}
