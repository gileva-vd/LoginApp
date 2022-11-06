//
//  ViewController.swift
//  LoginApp
//
//  Created by Валерия Гилева on 06.11.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var infoUserNameButton: UIButton!
    @IBOutlet var infoPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetVC = segue.destination as?  GreetViewController else { return }
        
        if userNameTF.text != "User" || passwordTF.text != "0987" {
            showAlert(withTitle: "Oops!", andMassage: "This is User name or Password undefined")
            userNameTF.text = ""
            passwordTF.text = ""
        } else {
            greetVC.welcomeUserName = "Welcome, \(userNameTF.text ?? "default value")!"
        }
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func getUserInfo(_ sender: UIButton) {
        switch sender{
        case infoUserNameButton: showAlert(withTitle: "Hi!", andMassage: "You name is User")
        case infoPasswordButton: showAlert(withTitle: "Hi!", andMassage: "You password is 0987")
        default:
            break;
        }
    }
}

//MARK: - UIAlertController
extension MainViewController{
    private func showAlert(withTitle title: String, andMassage message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okActoin = UIAlertAction(title: "OK",  style: .default)
        alert.addAction(okActoin)
        present(alert, animated: true)
    }
}

