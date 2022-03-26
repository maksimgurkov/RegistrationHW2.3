//
//  WelcomeViewController.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 26.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeNameLabel: UILabel!
    
    var welcomeName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeNameLabel.text = "Welcome, \(welcomeName)"
    }
}
