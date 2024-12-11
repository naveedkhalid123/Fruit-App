//
//  CreateNewPassViewController.swift
//  fruitapp
//
//  Created by Naveed Khalid on 08/12/2024.
//

import UIKit

class CreateNewPassViewController: UIViewController {
    
    
    @IBOutlet weak var newPassTxtField: UITextField!
    @IBOutlet weak var confirmPassTxtField: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newPassTxtField.layer.cornerRadius = 10
        newPassTxtField.layer.borderWidth = 1
        newPassTxtField.layer.borderColor = UIColor.lightGray.cgColor
        newPassTxtField.setLeftPaddingPoints(10)
        
        confirmPassTxtField.layer.cornerRadius = 10
        confirmPassTxtField.layer.borderWidth = 1
        confirmPassTxtField.layer.borderColor = UIColor.lightGray.cgColor
        confirmPassTxtField.setLeftPaddingPoints(10)
        
        submitBtn.layer.cornerRadius = 15
        
    }
    
    @IBAction func submitBtnAction(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "loginViewController") as! loginViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

