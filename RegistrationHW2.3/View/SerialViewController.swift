//
//  SerialViewController.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 29.03.2022.
//

import UIKit

class SerialViewController: UIViewController {
    
    @IBOutlet weak var oneSerialLabel: UILabel!
    @IBOutlet weak var twoSerialLabel: UILabel!
    @IBOutlet weak var threeSerialLabel: UILabel!
    
    var person: Persone!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneSerialLabel.text = person.aboutMe.hobby.serial.serialOne
        twoSerialLabel.text = person.aboutMe.hobby.serial.serialTwo
        threeSerialLabel.text = person.aboutMe.hobby.serial.serialThree

    }
}
