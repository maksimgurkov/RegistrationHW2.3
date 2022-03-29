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
    
    var townText = ""
    var componyText = ""
    var postText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        townLabel.text = townText
        componyLabel.text = componyText
        postLabel.text = postText
    }

}
