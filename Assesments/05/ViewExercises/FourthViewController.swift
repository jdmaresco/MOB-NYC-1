//
//  FourthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class FourthViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 4"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")

        /* TODO:
        Build a scroll view that takes up the entire screen. 
        */
        
        // SETUP SCROLLVIEW
        var sv = UIScrollView()
        sv.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(sv)
        sv.contentSize = self.exerciseView.frame.size

        /*
        In the scroll view, place a blue box at the top (20px high, 10px horizontal margins with the screen, a very tall (1000+px, width the same as the screen) purple label containing white text in the middle, and a red box at the bottom (20px high, 10px horizontal margins with the screen). The scroll view should scroll the entire height of the content.
        
        Use Autolayout.
        */
        
        // SETUP CONTENTS OF SCROLLVIEW
        let blueBox = UIView(), tallPurpleLabel = UILabel(), redBox = UIView()
        blueBox.backgroundColor         = .blueColor()
        tallPurpleLabel.backgroundColor = .purpleColor()
        tallPurpleLabel.textColor       = .whiteColor()
        tallPurpleLabel.text            = "This is a tall purple label"
        tallPurpleLabel.textAlignment   = .Center
        redBox.backgroundColor          = .redColor()
        
        for view in [blueBox, tallPurpleLabel, redBox] {
            view.setTranslatesAutoresizingMaskIntoConstraints(false)
            sv.addSubview(view)
        }
        
        let views = ["sv": sv, "bb": blueBox, "tpl": tallPurpleLabel, "rb": redBox]
        
        // SCROLL VIEW CONSTRAINTS
        self.exerciseView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[sv]|", options: nil, metrics: nil, views: views))
        self.exerciseView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[sv]|", options: nil, metrics: nil, views: views))
        
            // Explicitly setting purple label width to width of ScrollView
            self.exerciseView.addConstraint(NSLayoutConstraint(item: tallPurpleLabel, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: sv, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0))
        
        // HORIZONTAL CONSTRAINTS (SCROLL VIEW CONTENTS)
        sv.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[bb]-10-|", options: nil, metrics: nil, views: views))
        sv.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[tpl]|", options: nil, metrics: nil, views: views))
        sv.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[rb]-10-|", options: nil, metrics: nil, views: views))
        
        // VERTICAL CONSTRAINTS (SCROLL VIEW CONTENTS)
        sv.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[bb(==20)][tpl(==1000)][rb(==20)]|", options: nil, metrics: nil, views: views))

        /*
        Your view should be in self.exerciseView, not self.view.
        */
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("five", sender: nil)
    }

}
