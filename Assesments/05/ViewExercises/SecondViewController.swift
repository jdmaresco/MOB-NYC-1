//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        // TODO:
        // Build four blue squares, 20 points wide, one in each corner of the screen.
        // They must stay in their respective corners on device rotation.
        
        var tl = UIView(frame: CGRect(x: 0,
            y: 64,
            width: 20,
            height: 20))
        tl.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleBottomMargin
        
        var tr = UIView(frame: CGRect(x: self.view.frame.width - 20,
            y: 64,
            width: 20,
            height: 20))
        tr.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin

        var bl = UIView(frame: CGRect(x: 0,
            y: self.exerciseView.frame.size.height - self.toolbar.frame.size.height - 20,
            width: 20,
            height: 20))
        bl.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleTopMargin
        
        var br = UIView(frame: CGRect(x: self.view.frame.width - 20,
            y: self.exerciseView.frame.size.height - self.toolbar.frame.size.height - 20,
            width: 20,
            height: 20))
        br.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleTopMargin

        for view in [tl, tr, bl, br] {
            view.setTranslatesAutoresizingMaskIntoConstraints(false)
            view.backgroundColor = UIColor.blueColor()
            self.exerciseView.addSubview(view)
        }
            
        
        // Use Springs & Struts.
        // Your view should be in self.exerciseView, not self.view
        //
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
