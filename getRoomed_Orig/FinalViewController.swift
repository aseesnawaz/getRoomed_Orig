//
//  FinalViewController.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/17/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import UIKit
import Parse
import Foundation


class FinalViewController: UIViewController {

    let user = User.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Object = PFObject(className: "Users")
        Object["name"] = self.user.name
        Object["college"] = self.user.college
        Object["major"] = self.user.major
        Object["graduationYear"] = self.user.graduationYear
        Object["ethnicity"] = self.user.ethnicity
        Object["languagePreferred"] = self.user.languagePreferred
        Object["age"] = self.user.age
        Object["rating"] = self.user.rating
        Object["cellPhone"] = self.user.cellphone
        Object["Email"] = self.user.email
        Object["facebook"] = self.user.facebook
        Object["about"] = self.user.aboutMe
        
        Object.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("Object has been saved.")
        }

    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
