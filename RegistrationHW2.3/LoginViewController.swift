//
//  ViewController.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 26.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let name = "Max"
    private let password = "12345"
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        passwordTextField.delegate = self

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        nameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
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
        guard nameTextField.text != name || passwordTextField.text != password else { return }
        errorLogIn()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        passwordTextField.text = nil
        nameTextField.text = nil
    }
    
}

//MARK: - Extension
extension LoginViewController {
    
    private func remindInfo(fo info: String) {
         let alert = UIAlertController(title: "Info",
                                       message: "\(info)",
                                       preferredStyle: .alert)
         let alertAction = UIAlertAction(title: "ok", style: .default)
         alert.addAction(alertAction)
         present(alert, animated: true)
     }
     
     private func errorLogIn() {
         
         let alert = UIAlertController(
            title: "Error",
            message: "Pleas enter correct login and password",
            preferredStyle: .alert
         )
         
         let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
             self.passwordTextField.text = nil
         }
         alert.addAction(alertAction)
         present(alert, animated: true)
         
     }
    
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        passwordTextField.becomeFirstResponder()
    
        return true
    }
    
}

