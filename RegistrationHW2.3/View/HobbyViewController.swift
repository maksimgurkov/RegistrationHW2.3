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
    
    var game = ""
    var football = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyLabel.text = game
        footballLabel.text = football

  
    }
    



}
