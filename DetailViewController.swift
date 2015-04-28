//
//  DetailViewController.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/17/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import UIKit
import Parse

class DetailViewController: UIViewController {

    let user = User.sharedInstance
    
    @IBOutlet weak var nameL: UILabel!
    @IBOutlet weak var collegeL: UILabel!
    @IBOutlet weak var majorL: UILabel!
    @IBOutlet weak var graduationYearL: UILabel!
    @IBOutlet weak var ethnicityL: UILabel!
    @IBOutlet weak var languagePreferredL: UILabel!
    @IBOutlet weak var ageL: UILabel!
    @IBOutlet weak var cellPhoneL: UILabel!
    @IBOutlet weak var emailL: UILabel!
    @IBOutlet weak var facebookL: UILabel!
    @IBOutlet weak var aboutMeL: UILabel!
    
    var Id = Int();
    var busPhone: Int = 0;
    var busPhonetext: String = ""
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var query = PFQuery(className:"Users")
        query.whereKey("rating", equalTo:Id)
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            if error == nil {
                if let objects = objects as? [PFObject] {
                    for object in objects {
                        self.nameL.text = object["name"] as? String
                        self.collegeL.text = object["college"] as? String
                        self.majorL.text = object["major"] as? String
                        self.graduationYearL.text = object["graduationYear"] as? String
                        self.majorL.text = object["major"] as? String
                        self.languagePreferredL.text = object["languagePreferred"] as? String
                        self.ageL.text = object["age"] as? String
                        self.cellPhoneL.text = object["cellPhone"] as? String
                        self.emailL.text = object["Email"] as? String
                        self.facebookL.text = object["facebook"] as? String
                        self.aboutMeL.text = object["about"] as? String
                        self.ethnicityL.text = object["ethnicity"] as? String
                    }
                }
            } else {
                // Log details of the failure
                println("Error: \(error) \(error!.userInfo!)")
            }
        }

        
        
}


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
