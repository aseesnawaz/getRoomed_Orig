//
//  ThirdView.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/15/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import UIKit

class ThirdView: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var cellphone: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var facebook: UITextField!
    
    let user = User.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellphone.delegate = self
        email.delegate = self
        facebook.delegate = self
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        cellphone.resignFirstResponder()
        email.resignFirstResponder()
        facebook.resignFirstResponder()
        
        return true
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }


    @IBAction func nextPress(sender: AnyObject) {
        self.user.cellphone = cellphone.text
        self.user.email = email.text
        self.user.facebook = facebook.text
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
