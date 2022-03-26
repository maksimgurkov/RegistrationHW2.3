//
//  ViewController.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 26.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let name = "Max"
    let password = "12345"
    let error = "Pleas enter correct login and password"
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? WelcomeViewController else { return }
        infoVC.welcomeName = nameTextField.text ?? ""
    }
    
    @IBAction func forgotName() {
        remindInfo(fo: name)
    }
    
    @IBAction func forgotPasword() {
        remindInfo(fo: password)
    }
    
    @IBAction func logInAction(_ sender: Any) {
        
        if nameTextField.text == name && passwordTextField.text == password {
            
        } else {
            testAklert()
        }
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        nameTextField.text = nil
        passwordTextField.text = nil
    }
    
   private func remindInfo(fo info: String) {
        let alert = UIAlertController(title: "Info",
                                      message: "\(info)",
                                      preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    private func testAklert() {
        
        let alertt = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "", style: .default) { _ in
            self.passwordTextField.text = nil
        }
        alertt.addAction(action)
        present(alertt, animated: true)
        
    }
    


}

