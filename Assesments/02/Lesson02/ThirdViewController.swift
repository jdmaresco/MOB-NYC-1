//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
*/

    @IBOutlet weak var numberEntered: UITextField!

    @IBOutlet weak var evenOddLabel: UILabel!
    
    @IBAction func isEvenOrOddButton(sender: AnyObject) {
        var numberToTest:Int? = numberEntered.text!.toInt()
        
        if let testingNumber = numberToTest {
            if ( numberToTest! % 2 == 0 ) {
                evenOddLabel.text = "is even"
            } else {
                evenOddLabel.text = "is odd"
            }
        }
    }
    
    
}
