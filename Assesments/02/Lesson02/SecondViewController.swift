//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    @IBOutlet weak var newNumber: UITextField!
    
    @IBOutlet weak var numberSum: UILabel!
    
    @IBAction func addButton(sender: AnyObject) {
        var newNumberValue:Int? = newNumber.text.toInt()
        var numberSumValue:Int? = numberSum.text!.toInt()
        
        if let numberSumOpt = numberSumValue {
            if let newNumberOpt = newNumberValue {
                numberSum.text = String( numberSumValue! + newNumberValue! )
            }
        }
    }
}