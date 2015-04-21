//
//  TableViewController.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/17/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import UIKit
import Foundation
import Parse

class TableViewController: PFQueryTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = 60
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! PFTableViewCell
     //   cell.yakText.text = "Asees"
     //   cell.count.text =
     //   cell.time.text = "\((indexPath.row + 1) * 3)m ago"
    //    cell.replies.text = "\((indexPath.row + 1) * 1) replies"
        return cell
    }
    
}


