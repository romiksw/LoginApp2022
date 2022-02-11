//
//  WelcomeViewController.swift
//  LoginApp2022
//
//  Created by Roman Kozlov on 11.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
    }
}
