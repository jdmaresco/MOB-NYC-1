//
//  FifthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class FifthViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 5"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Create a green button with a red border that says ‘Tap me!’ (50px by 50px), center it in the middle of the screen.
        Once tapped, the button should animate up 20 pixels and turn red, then immediately back down 20 pixels and turn back to green. It should not be clickable while animating.
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
        
        var jumpingButton = UIButton()
        jumpingButton.backgroundColor = .greenColor()
        jumpingButton.layer.borderColor = UIColor.redColor().CGColor
        jumpingButton.layer.borderWidth = 1.0
        jumpingButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.exerciseView.addSubview(jumpingButton)
        
        self.exerciseView.addConstraint(NSLayoutConstraint(item: jumpingButton, attribute: .CenterX, relatedBy: .Equal, toItem: self.exerciseView, attribute: .CenterX, multiplier: 1, constant: 0))
        self.exerciseView.addConstraint(NSLayoutConstraint(item: jumpingButton, attribute: .CenterY, relatedBy: .Equal, toItem: self.exerciseView, attribute: .CenterY, multiplier: 1, constant: 0))
        self.exerciseView.addConstraint(NSLayoutConstraint(item: jumpingButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 50))
        self.exerciseView.addConstraint(NSLayoutConstraint(item: jumpingButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 50))
        
        jumpingButton.addTarget(self, action: "makeButtonJump:", forControlEvents: .TouchUpInside)
    }
    
    func makeButtonJump(sender:UIButton!) {
        var btn:UIButton = sender
        
        // Move up
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            btn.frame.origin.y -= 20
            btn.backgroundColor = .redColor()
            }, completion: { animationsCompleted -> Void in

                // Move back down
                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    btn.frame.origin.y += 20
                    btn.backgroundColor = .greenColor()
                })
        })
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("six", sender: nil)
    }

}
