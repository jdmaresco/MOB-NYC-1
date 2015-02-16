//
//  ThirdViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class ThirdViewController: ExerciseViewController {

    var ul = UIView(), ur = UIView(), ll = UIView(), lr = UIView(), spacer = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        // TODO:
        // Build four blue squares, 20 points wide, one in each corner of the screen.
        // They must stay in their respective corners on device rotation.
        
        // Use Autolayout.
        // Your view should be in self.exerciseView, not self.view
        //
        
        //make four views for four corners
    
        let views = ["ul": ul, "ur": ur, "ll": ll, "lr": lr, "spacer": spacer, "toolbar": self.toolbar, "topLayoutGuide": topLayoutGuide, "bottomLayoutGuide": bottomLayoutGuide]
    
        for view in [ul, ur, ll, lr] {
            view.backgroundColor = UIColor.blueColor()
            view.setTranslatesAutoresizingMaskIntoConstraints(false)
            self.exerciseView.addSubview(view)
        }
        spacer.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(spacer)
        
        // Layout upper left block
        // Used topLayoutGuide to position blocks properly on rotation.
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[ul(==20)]", options: nil, metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide][ul(==20)]", options: nil, metrics: nil, views: views))
        
        //Layout upper right block
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[ur(==20)]|", options: nil, metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide][ur(==20)]", options: nil, metrics: nil, views: views))
        
        // Layout lower left block
        // Tried using bottomLayoutGuide to space blocks above toolbar, but it didn't work. Using spacer equal to toolbar height.
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[ll(==20)]", options: nil, metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[ll(==20)][spacer(==toolbar)]|", options: nil, metrics: nil, views: views))
        
        //Layout lower right block
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[lr(==20)]|", options: nil, metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[lr(==20)][spacer(==toolbar)]|", options: nil, metrics: nil, views: views))


    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }

}
