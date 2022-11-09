//
//  ThirdViewController.swift
//  LoginApp
//
//  Created by Валерия Гилева on 09.11.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var descriptionLabel: UILabel!
    
    private let personModel = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = personModel.description
    }
    

}
