//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {

    
    /*
    TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
    TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var presidentsInaugurationTable: UITableView!
    
    @IBOutlet weak var inaugurationYear: UITextField!
    @IBOutlet weak var presidentName: UITextField!
    
    // Initializing dictionary to pre-populate TableView (I know this isn't part of the assignment)
    var presidentialDictionary: [String: String] = ["1989":"Bush Sr.", "1993":"Clinton", "2001":"Bush Jr."]

    // Initializing array to hold keys of Dictionary, will iterate over this when populating TableView
    var inaugurationDatesArray: [String] = []
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        self.view.endEditing(true);
        
        // Add value to array that holds dictionary's keys and refresh table

            presidentialDictionary[inaugurationYear.text] = textField.text

            inaugurationDatesArray.append(inaugurationYear.text)
        
            presidentsInaugurationTable.reloadData()
        
        return false;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return presidentialDictionary.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        /*  Did this kind of funky workaround so that when the first cell is populated, we initialize an array holding the keys of the Dictionary which we then go through one by one as each cell is populated. This way we make sure we access each key and value. Not sure if this is necessary but didn't know how else to access each dictionary entry "by index".  */
        
        if (inaugurationDatesArray.isEmpty) {
            for (year, president) in presidentialDictionary {
                inaugurationDatesArray.append(year)
            }
        }
        
        var year = inaugurationDatesArray[indexPath.row]
        
        cell.textLabel?.text = "Inaugurated " + year + ": " + presidentialDictionary[year]!
        
        return cell
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
    }
    

        /*
    TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
    */
    
    
    override func viewWillAppear(animated: Bool) {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "makeTextBoxBlue", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "makeTextBoxRed", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(animated: Bool) {
        
            NSNotificationCenter.defaultCenter().removeObserver(self)
        
    }
    
    func makeTextBoxBlue() {
        presidentName.backgroundColor = UIColor.blueColor()
        inaugurationYear.backgroundColor = UIColor.blueColor()
    }
    func makeTextBoxRed() {
        presidentName.backgroundColor = UIColor.redColor()
        inaugurationYear.backgroundColor = UIColor.redColor()
    }
    
}
