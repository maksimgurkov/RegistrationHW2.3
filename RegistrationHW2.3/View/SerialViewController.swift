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
    
    var serialOne = ""
    var serialTwo = ""
    var serialThree = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneSerialLabel.text = serialOne
        twoSerialLabel.text = serialTwo
        threeSerialLabel.text = serialThree

    }
}
