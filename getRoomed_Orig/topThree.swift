//
//  topThree.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/18/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import UIKit

class topThree: UIViewController {

    @IBOutlet weak var oneName: UILabel!
    @IBOutlet weak var oneCollege: UILabel!
    @IBOutlet weak var oneAge: UILabel!
    
    
    @IBOutlet weak var twoName: UILabel!
    @IBOutlet weak var twoCollege: UILabel!
    @IBOutlet weak var twoAge: UILabel!
    
    
    @IBOutlet weak var threeName: UILabel!
    @IBOutlet weak var threeCollege: UILabel!
    @IBOutlet weak var threeAge: UILabel!
    
    var Fid:Int = 0;
    let user = User.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let finalRate = user.rating
        Fid = finalRate
        
        var query = PFQuery(className:"Users")
        query.whereKey("rating", equalTo:finalRate)
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            if error == nil {
                if let objects = objects as? [PFObject] {
                    for object in objects{
                        self.oneName.text = object["name"] as? String
                        self.oneCollege.text = object["college"] as? String
                        self.oneAge.text = object["age"] as? String
                    }
                }
            } else {
                // Log details of the failure
                println("Error: \(error) \(error!.userInfo!)")
            }
        }
        var query2 = PFQuery(className:"Users")
        query2.whereKey("rating", equalTo:finalRate+1)
        query2.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            if error == nil {
                if let objects = objects as? [PFObject] {
                    for object in objects {
                        self.twoName.text = object["name"] as? String
                        self.twoCollege.text = object["college"] as? String
                        self.twoAge.text = object["age"] as? String
                        
                    }
                }
            } else {
                println("Error: \(error) \(error!.userInfo!)")
            }
        }
        var query3 = PFQuery(className:"Users")
        query3.whereKey("rating", equalTo:finalRate-1)
        query3.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            if error == nil {
                if let objects = objects as? [PFObject] {
                    for object in objects {
                        self.threeName.text = object["name"] as? String
                        self.threeCollege.text = object["college"] as? String
                        self.threeAge.text = object["age"] as? String
                    }
                }
            } else {
                println("Error: \(error) \(error!.userInfo!)")
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue"{
            let vc: DetailViewController = segue.destinationViewController as! DetailViewController
            vc.Id = Fid;
        }
        else if segue.identifier == "mySegue2"{
            let vc: DetailViewController = segue.destinationViewController as! DetailViewController
            vc.Id = Fid+1;
        }
        else if segue.identifier == "mySegue3"{
            let vc: DetailViewController = segue.destinationViewController as! DetailViewController
            vc.Id = Fid-1;
        }


    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
