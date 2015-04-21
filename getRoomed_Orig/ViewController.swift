//
//  ViewController.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/15/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        // Do any additional setup after loading the view, typically from a nib.
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

