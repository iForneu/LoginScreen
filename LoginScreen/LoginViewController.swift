//
//  ViewController.swift
//  LoginScreen
//
//  Created by Kirill Korotaev on 05.10.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    //MARK: - Private properties
    private var user = "User"
    private var password = "Password"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = user
    }
    
    // MARK: - IBActions
    @IBAction func logInButtonPressed() {
        if userNameTF.text != "User" || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(password) 😉")
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Work with keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInButtonPressed()
        }
        return true
    }
}
