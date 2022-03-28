//
//  ViewController.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 26.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let personMax = Persone.aboutMe()
    
    private let name = "Max"
    private let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        passwordTextField.delegate = self

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomVC = viewController as? WelcomeViewController {
                welcomVC.welcomeName = personMax.logIn
                welcomVC.imagePersone = personMax.image
            } else if let hobbyVC = viewController as? HobbyViewController {
                hobbyVC.test = "hhshhd"
            }
        }
        
        
//        guard let infoVC = segue.destination as? WelcomeViewController else { return }
        
    }
    
    @IBAction func forgotName() {
        remindInfo(fo: personMax.logIn)
    }
    
    @IBAction func forgotPasword() {
        remindInfo(fo: personMax.password)
    }
    
    @IBAction func logInAction() {
        guard nameTextField.text != personMax.logIn || passwordTextField.text != personMax.password else { return }
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
        
        if textField == nameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
           logInAction()
           performSegue(withIdentifier: "welcomeVC", sender: nil)
        }
    
        return true
    }
    
}

