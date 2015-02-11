//
//  ThirdViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class ThirdViewController: ExerciseViewController {

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
        /*var ul = UIView()
        var ur = UIView()
        var ll = UIView()
        var lr = UIView()
        
        for view in [ul, ur, ll, lr] {
            view.backgroundColor = UIColor.blueColor()
            view.setTranslatesAutoresizingMaskIntoConstraints(false)  // what does this do?
            self.exerciseView.addSubview(view)
            
            view.addConstraint(NSLayoutConstraint(item: <#AnyObject#>, attribute: <#NSLayoutAttribute#>, relatedBy: <#NSLayoutRelation#>, toItem: <#AnyObject?#>, attribute: <#NSLayoutAttribute#>, multiplier: <#CGFloat#>, constant: <#CGFloat#>)
        }*/
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }

}
