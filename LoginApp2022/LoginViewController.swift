//
//  LoginViewController.swift
//  LoginApp2022
//
//  Created by Roman Kozlov on 11.02.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func loginAction() {
        guard userNameTF.text == "User" else {
            showAlert(with: "Invalid login or password", and: "Please enter correct")
            return
        }

        guard passwordTF.text == "Password" else {
            showAlert(with: "Invalid login or password", and: "Please enter correct")
            return
        }
        
        performSegue(withIdentifier: "showWelcomeIdentifier", sender: nil)
    }
    
    @IBAction func forgetNameAction() {
        showAlert(with: "Oooops", and: "Your name is User!")
    }
    
    @IBAction func forgetPasswordAction() {
        showAlert(with: "Ooops", and: "Your password is Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
