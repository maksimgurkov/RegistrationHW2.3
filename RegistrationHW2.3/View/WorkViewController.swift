//
//  WorkViewController.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 29.03.2022.
//

import UIKit

class WorkViewController: UIViewController {

    @IBOutlet weak var townLabel: UILabel!
    @IBOutlet weak var componyLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    
    var person: Persone!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        townLabel.text = person.aboutMe.work.address
        componyLabel.text = person.aboutMe.work.nameCompany
        postLabel.text = person.aboutMe.work.post
    }

}
