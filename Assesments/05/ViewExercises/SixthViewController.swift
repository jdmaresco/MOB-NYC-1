//
//  SixthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SixthViewController: ExerciseViewController, UITableViewDelegate, UITableViewDataSource {
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 6"
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.exerciseView.addSubview(tableView)
        self.tableView.frame = self.exerciseView.frame
        self.tableView.contentInset = UIEdgeInsetsMake(CGRectGetMaxY(self.navigationController!.navigationBar.frame), 0, 0, 0)
        self.tableView.autoresizingMask = self.exerciseView.autoresizingMask
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell?
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        }
        
        /* TODO:
        The table view cells on this screen are blank.
        
        Add a label to each cell that is green and centered, and have its text say “Row {X}” (X is the row number of the cell). The tableview should rotate correctly. Use Autolayout.
        */
        
        
        // REMOVE ALL EXISTING LABELS INCELL
        // This avoids ending up with overlapping labels due to cell being reused
        
        for subview in cell!.subviews {
            if subview.isKindOfClass(UILabel) {
                subview.removeFromSuperview()
            }
        }
        
        // ADD LABEL TO CELL AND FORMAT
        
        var newLabel = UILabel()

        newLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        newLabel.tag = 44
        newLabel.font = UIFont.systemFontOfSize(14.0)
        newLabel.textColor = .greenColor()
        newLabel.textAlignment = .Center
        newLabel.text = "Row \(indexPath.row + 1)"

        cell!.addSubview(newLabel)
        
        // ADD CENTERING CONSTRAINTS TO LABEL
        
        cell!.addConstraint(NSLayoutConstraint(item: newLabel, attribute: .CenterX, relatedBy: .Equal, toItem: cell!, attribute: .CenterX, multiplier: 1, constant: 0))
        cell!.addConstraint(NSLayoutConstraint(item: newLabel, attribute: .CenterY, relatedBy: .Equal, toItem: cell!, attribute: .CenterY, multiplier: 1, constant: 0))
        
        return cell!
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
}
