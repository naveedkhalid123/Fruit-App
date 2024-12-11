//
//  OTPViewController.swift
//  fruitapp
//
//  Created by Naveed Khalid on 08/12/2024.
//

import UIKit

class OTPViewController: UIViewController {
    
    
    @IBOutlet weak var verifyBtn: UIButton!
    @IBOutlet weak var resendOTPBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verifyBtn.layer.cornerRadius = 10
        resendOTPBtn.layer.cornerRadius = 10
    }
    
    
    @IBAction func verifyBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CreateNewPassViewController") as! CreateNewPassViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
       self.navigationController?.popViewController(animated: true)
    }
    
}

