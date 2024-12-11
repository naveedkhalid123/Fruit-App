//
//  loginViewController.swift
//  fruitapp
//
//  Created by Naveed Khalid on 08/12/2024.
//


import UIKit

class loginViewController: UIViewController {


    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
           emailTxt.layer.cornerRadius = 10
           emailTxt.layer.borderWidth = 1
           emailTxt.layer.borderColor = UIColor.lightGray.cgColor
           emailTxt.setLeftPaddingPoints(10)

           passwordTxtField.layer.cornerRadius = 10
           passwordTxtField.layer.borderWidth = 1
           passwordTxtField.layer.borderColor = UIColor.lightGray.cgColor
           passwordTxtField.setLeftPaddingPoints(10)
        
           loginBtn.layer.cornerRadius = 15
    }
    
    
    @IBAction func forgotPassBtnAction(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func createAccBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension UITextField {
    // Add padding to the left of the text field
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    // Add padding to the right of the text field (optional)
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
