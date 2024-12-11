//
//  SignUpViewController.swift
//  fruitapp
//
//  Created by Naveed Khalid on 08/12/2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var phoneTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTxtField.layer.cornerRadius = 10
        nameTxtField.layer.borderWidth = 1
        nameTxtField.layer.borderColor = UIColor.lightGray.cgColor
        nameTxtField.setLeftPaddingPoints(10)
        
        emailTxtField.layer.cornerRadius = 10
        emailTxtField.layer.borderWidth = 1
        emailTxtField.layer.borderColor = UIColor.lightGray.cgColor
        emailTxtField.setLeftPaddingPoints(10)
        
        phoneTxtField.layer.cornerRadius = 10
        phoneTxtField.layer.borderWidth = 1
        phoneTxtField.layer.borderColor = UIColor.lightGray.cgColor
        phoneTxtField.setLeftPaddingPoints(10)
        
        passwordTxtField.layer.cornerRadius = 10
        passwordTxtField.layer.borderWidth = 1
        passwordTxtField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTxtField.setLeftPaddingPoints(10)
     
        signUpButton.layer.cornerRadius = 15
    }
    
    
    @IBAction func createAccountButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "loginViewController") as! loginViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
