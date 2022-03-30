//
//  HobbyViewController.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 28.03.2022.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var footballLabel: UILabel!
    
    var person: Persone!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyLabel.text = person.aboutMe.hobby.game
        footballLabel.text = person.aboutMe.hobby.sport

  
    }
    



}
