//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’

    */

    @IBOutlet weak var testName: UILabel!

    @IBAction func GenTextButton(sender: AnyObject) {
        testName.text = "hello world!"
    }

    /*
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    */

    @IBOutlet weak var nameAndAgeLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!

    @IBAction func printNameAndAgeLabel(sender: AnyObject) {
        nameAndAgeLabel.text = "Hello \(nameField.text), you are \(ageField.text) years old!"
    }

    /*
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    */


    @IBOutlet weak var ageCheckLabel: UILabel!

    @IBAction func checkAge(sender: AnyObject) {
        if (ageField.text.toInt() >= 21) {
            ageCheckLabel.text = "You can drink."
        } else if (ageField.text.toInt() >= 18) {
            ageCheckLabel.text = "You can vote."
        } else if (ageField.text.toInt() >= 16) {
            ageCheckLabel.text = "You can drive."
        } else {
            ageCheckLabel.text = "You are a child."
        }
    }

    /*
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */

    @IBOutlet weak var ageCheckLabelTwo: UILabel!

    @IBAction func checkAgeTwo(sender: AnyObject) {
        var ageMessage:String
        var ageValue:Int = ageField.text.toInt()!

        if ( ageValue >= 16 ) {
            if ( ageValue < 18 ) {
                ageCheckLabelTwo.text = "You can drive."
            } else if ( ageValue < 21 ) {
                ageCheckLabelTwo.text = "You can drive and vote."
            } else {
                ageCheckLabelTwo.text = "You can drive, vote, and drink (but not at the same time!)"
            }
        }
    }

}
