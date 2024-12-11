//
//  ForgotPasswordViewController.swift
//  fruitapp
//
//  Created by Naveed Khalid on 08/12/2024.
//

import UIKit

class ForgotPasswordViewController: UIViewController {


    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var sendCodeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTxtField.layer.cornerRadius = 10
        emailTxtField.layer.borderWidth = 1
        emailTxtField.layer.borderColor = UIColor.lightGray.cgColor
        emailTxtField.setLeftPaddingPoints(10)
        
        sendCodeBtn.layer.cornerRadius = 15
    }
    
    
    @IBAction func createAccBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func sendCodeBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

