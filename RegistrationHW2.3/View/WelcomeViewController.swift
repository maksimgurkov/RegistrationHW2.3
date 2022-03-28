//
//  WelcomeViewController.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 26.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeNameLabel: UILabel!
    @IBOutlet weak var imagePersonAvatar: UIImageView!
    
    var welcomeName = ""
    var imagePersone = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeNameLabel.text = "Welcome, \(welcomeName)"
        imagePersonAvatar.layer.cornerRadius = imagePersonAvatar.frame.width / 2
        imagePersonAvatar.image = imagePersone
    }
}
