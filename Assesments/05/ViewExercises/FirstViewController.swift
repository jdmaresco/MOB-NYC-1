//
//  FirstViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class FirstViewController: ExerciseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 1"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        // TODO:
        
        // Create a red box (10px tall, the width of the screen)
        let redBox = UIView(frame: CGRect(x: 0,
            y: 64,
            width: self.view.frame.size.width,
            height: 10))
        
        redBox.backgroundColor = UIColor.redColor()
        redBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // with a black border on the very top of the screen below the nav bar,
        redBox.layer.borderColor = UIColor.blackColor().CGColor
        redBox.layer.borderWidth = 1.0
        
        // and a black box with a red border on the very bottom of the screen (same dimensions), above the toolbar.
        
        let blackBox = UIView(frame: CGRect(x: 0,
            y: self.exerciseView.frame.size.height - self.toolbar.frame.size.height - 12,
            width: self.view.frame.size.width,
            height: 10))
        blackBox.backgroundColor = UIColor.blackColor()
        blackBox.layer.borderColor = UIColor.redColor().CGColor
        blackBox.layer.borderWidth = 1.0
        blackBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Use Springs & Struts.
        // Your view should be in self.exerciseView, not self.view
        
        self.exerciseView.addSubview(redBox)
        self.exerciseView.addSubview(blackBox)


    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    func next() {
        self.performSegueWithIdentifier("two", sender: nil)
    }
}
