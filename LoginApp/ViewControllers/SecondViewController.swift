//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Валерия Гилева on 08.11.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var infoOneLabel: UILabel!
    @IBOutlet var infoTwoLabel: UILabel!
    
    @IBOutlet var infoTreeLabel: UILabel!
    
    private let personModel = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoOneLabel.text = " Я - \(personModel.name)!"
        
        infoTwoLabel.text = "Мне \(personModel.age) годика"
        
        infoTreeLabel.text = "Проживаю в \(personModel.location) "
        
    }

}
