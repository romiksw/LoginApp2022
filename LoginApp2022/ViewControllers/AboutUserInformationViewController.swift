//
//  AboutUserInformationViewController.swift
//  LoginApp2022
//
//  Created by Roman Kozlov on 20.02.2022.
//

import UIKit

class AboutUserInformationViewController: UIViewController {
    
    @IBOutlet var fullNameOutlet: UILabel!
    @IBOutlet var ageAndTownOutlet: UILabel!
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem.title = user.personInformation.fullName
        
        fullNameOutlet.text = "Hello, my fullname is \(user.personInformation.fullName)"
        ageAndTownOutlet.text = "I am \(user.personInformation.age) old. I was born in \(user.personInformation.townBirth)"
    }
}
