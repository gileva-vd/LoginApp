//
//  GreetViewController.swift
//  LoginApp
//
//  Created by Валерия Гилева on 06.11.2022.
//

import UIKit

class GreetViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var user = ""
    
    var welcomeUserName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"
        
    }
}

