//
//  SecondView.swift
//  getRoomed_Orig
//
//  Created by Izza Nawaz on 4/15/15.
//  Copyright (c) 2015 Asees Nawaz. All rights reserved.
//

import UIKit

class SecondView: UIViewController {

    @IBOutlet weak var smoke: UISwitch!
    @IBOutlet weak var drink: UISwitch!
    @IBOutlet weak var party: UISwitch!
    @IBOutlet weak var goToMovies: UISwitch!
    @IBOutlet weak var stayUpLate: UISwitch!
    @IBOutlet weak var bringGuestsOver: UISwitch!
    @IBOutlet weak var procrastinate: UISwitch!
    @IBOutlet weak var likeLoudMusic: UISwitch!
    @IBOutlet weak var loveFood: UISwitch!
    @IBOutlet weak var helpOthers: UISwitch!
    
    let user = User.sharedInstance
    
    var rating: Int = 0;
    var maxRating: Int = 16;
    
    @IBAction func nextClicked(sender: AnyObject) {
        if smoke.on{
            rating+=2
        }
        if drink.on{
            rating+=2
        }
        if party.on{
            rating+=2
        }
        if goToMovies.on{
            rating+=2
        }
        if stayUpLate.on{
            rating+=1
        }
        if bringGuestsOver.on{
            rating+=1
        }
        if goToMovies.on{
            rating+=1
        }
        if likeLoudMusic.on{
            rating+=2
        }
        if loveFood.on{
            rating+=1
        }
        if helpOthers.on{
            rating+=2
        }
        self.user.rating = rating;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
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
