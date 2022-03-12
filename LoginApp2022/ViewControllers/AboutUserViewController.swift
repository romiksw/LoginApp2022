//
//  AboutUserViewController.swift
//  LoginApp2022
//
//  Created by Roman Kozlov on 20.02.2022.
//

import UIKit

class AboutUserViewController: UIViewController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = user.personInformation.fullName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutUserInformationVC = segue.destination as?
                AboutUserInformationViewController else { return }
        aboutUserInformationVC.user = user
    }
}
