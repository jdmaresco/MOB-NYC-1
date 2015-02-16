//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    var ul = UIView(), ur = UIView(), ll = UIView(), lr = UIView()
    
    // Setup and render squares
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        // TODO:
        // Build four blue squares, 20 points wide, one in each corner of the screen.
        // They must stay in their respective corners on device rotation.
        
        
        // Identifying y coordinates for block directly, updating on viewWillUpdateSubviews to react to rotation.
        
        ul.frame = CGRect(x: 0,
            y: 64,
            width: 20,
            height: 20)
        
        ur.frame = CGRect(x: self.view.frame.width - 20,
            y: 64,
            width: 20,
            height: 20)
        
        ll.frame = CGRect(x: 0,
            y: self.exerciseView.frame.size.height - self.toolbar.frame.size.height - 20,
            width: 20,
            height: 20)
        
        lr.frame = CGRect(x: self.view.frame.width - 20,
            y: self.exerciseView.frame.size.height - self.toolbar.frame.size.height - 20,
            width: 20,
            height: 20)
        
        ul.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleBottomMargin
        ur.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        ll.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleTopMargin
        lr.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleTopMargin

        for view in [ul, ur, ll, lr] {
            view.setTranslatesAutoresizingMaskIntoConstraints(false)
            view.backgroundColor = UIColor.blueColor()
            self.exerciseView.addSubview(view)
        }
            
        
        // Use Springs & Struts.
        // Your view should be in self.exerciseView, not self.view
        //
    }
    
    // Adjust frame of upper squares when rotate to account for different width of navigation bar
    
    override func viewWillLayoutSubviews() {
        if UIInterfaceOrientationIsLandscape(self.interfaceOrientation) {
            ul.frame = CGRect(x: 0,
                y: 32,
                width: 20,
                height: 20)
            
            ur.frame = CGRect(x: self.view.frame.width - 20,
                y: 32,
                width: 20,
                height: 20)
        } else {
            ul.frame = CGRect(x: 0,
                y: 64,
                width: 20,
                height: 20)
            
            ur.frame = CGRect(x: self.view.frame.width - 20,
                y: 64,
                width: 20,
                height: 20)
        }
    }

    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
