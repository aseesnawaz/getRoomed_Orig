//
//  FourthView.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/15/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import UIKit
import Foundation
import Parse

class FourthView: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var about: UITextView!
    
    let user = User.sharedInstance

    override func viewDidLoad() {
         super.viewDidLoad()

}
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    @IBAction func nextPress(sender: AnyObject) {
        self.user.aboutMe = about.text
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
