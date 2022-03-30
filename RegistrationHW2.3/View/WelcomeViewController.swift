//
//  WelcomeViewController.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 26.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeNameLabel: UILabel!
    @IBOutlet weak var imagePersonAvatar: UIImageView! {
        didSet {
            imagePersonAvatar.layer.cornerRadius = imagePersonAvatar.frame.width / 1.6
        }
    }
    
    var person: Persone!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeNameLabel.text = "Welcome, \(person.name) \(person.surName)"

        imagePersonAvatar.image = person.image
    }
}
