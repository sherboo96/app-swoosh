//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Mahmoud Sherbeny on 5/20/20.
//  Copyright © 2020 Mahmoud Sherbeny. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: ButtonBorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    
    @IBAction func onMenTabbed(_ sender: Any) {
        selectLeague(leagueString: "Men")
    }
    
    @IBAction func onWommanTabbed(_ sender: Any) {
        selectLeague(leagueString: "Womman")
    }
    
    @IBAction func onCoedTabbed(_ sender: Any) {
        selectLeague(leagueString: "Coed")
    }
    
    func selectLeague(leagueString: String){
        player.desiredLeague = leagueString
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
    @IBAction func nextButtonAC(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
}
