//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Mahmoud Sherbeny on 5/20/20.
//  Copyright © 2020 Mahmoud Sherbeny. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func nextButtonAC(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
}
