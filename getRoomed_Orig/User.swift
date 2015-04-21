//
//  User.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/15/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import Foundation
import UIKit


class User {
    class var sharedInstance: User {
        struct Static {
            static var instance: User?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = User()
        }
        
        return Static.instance!
    }
    
    var name: String = ""
    var college: String = ""
    var major: String = ""
    var graduationYear: String = ""
    var ethnicity: String = ""
    var languagePreferred: String = ""
    var age: String = ""
    var cellphone: String = ""
    var email: String = ""
    var facebook: String = ""
    var rating: Int = 10
    var aboutMe: String = ""
}