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
    
    @IBOutlet var infoUserNameButton: UIButton!
    @IBOutlet var infoPasswordButton: UIButton!
    
    private let user = "User"
    private let password = "0987"
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else  { return }
            
            for viewController in viewControllers {
                if let greetVC = viewController as?  GreetViewController {
                    greetVC.user = user
                }
//                else if let secondVC = viewController as?  SecondViewController {
//                    secondVC.view.backgroundColor = .systemMint
//                }
            }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func logInPressed() {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMassage: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
        
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func getUserInfo(_ sender: UIButton) {
        switch sender{
        case infoUserNameButton: showAlert(withTitle: "Hi!", andMassage: "Your name is \(user)")
        case infoPasswordButton: showAlert(withTitle: "Hi!", andMassage: "Your password is \(password) ")
        default:
            break;
        }
    }
}

//MARK: - UIAlertController
extension MainViewController{
    private func showAlert(withTitle title: String, andMassage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

