//
//  MoreInfoViewController.swift
//  LoginApp2022
//
//  Created by Roman Kozlov on 20.02.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet var futureYearTextField: UITextField!
    @IBOutlet var futureAgeLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let x = Int(futureYearTextField.text!) {
            futureAgeLabel.text = "you will be \(x - 22) old"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.reloadInputViews()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        //view.reloadInputViews()
        if let x = Int(futureYearTextField.text!) {
            futureAgeLabel.text = "you will be \(x - 22) old"
        }
    }
}
