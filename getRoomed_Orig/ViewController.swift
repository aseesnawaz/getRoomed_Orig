//
//  ViewController.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/15/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var college: UITextField!
    @IBOutlet weak var major: UITextField!
    @IBOutlet weak var graduationYear: UITextField!
    @IBOutlet weak var ethnicity: UITextField!
    @IBOutlet weak var languagePreferred: UITextField!
    @IBOutlet weak var age: UITextField!

    let user = User.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name:UIKeyboardWillShowNotification, object: nil);
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name:UIKeyboardWillHideNotification, object: nil);
        
        name.delegate = self
        college.delegate = self
        major.delegate = self
        graduationYear.delegate = self
        ethnicity.delegate = self
        languagePreferred.delegate = self
        age.delegate = self
        
    }
    func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y -= 150
    }
    
    func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y += 150
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        name.resignFirstResponder()
        college.resignFirstResponder()
        major.resignFirstResponder()
        graduationYear.resignFirstResponder()
        ethnicity.resignFirstResponder()
        languagePreferred.resignFirstResponder()
        age.resignFirstResponder()
        
        return true
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
        
    }

    @IBAction func nextPress(sender: AnyObject) {
        self.user.name = name.text
        self.user.college = college.text
        self.user.major = major.text
        self.user.graduationYear = graduationYear.text
        self.user.ethnicity = ethnicity.text
        self.user.languagePreferred = languagePreferred.text
        self.user.age = age.text
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

