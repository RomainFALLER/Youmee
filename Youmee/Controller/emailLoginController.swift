//
//  emailLoginController.swift
//  Youmee
//
//  Created by FALLER Romain on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class emailLoginController : UIViewController, UITextFieldDelegate {
    
    // Variables and UI components
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var emailLoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBottomBorderToTextFields()
        emailTextField.delegate = self
        emailLoginButton.isEnabled=false
        emailLoginButton.addTarget(self, action: #selector(editingChanged) , for: .editingChanged)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        emailTextField.becomeFirstResponder()
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        
        if (sender.text == "roro")
        {
            emailLoginButton.isEnabled=true
            emailLoginButton.setBackgroundImage(UIImage(named: "emailLoginButtonActive"), for: .normal)
        } else
        {
            emailLoginButton.isEnabled=false
            emailLoginButton.setBackgroundImage(UIImage(named: "emailLoginButtonInnactive"), for: .normal)
        }
    }
    
    
    // Method to set the bottom border to the text field
    func setBottomBorderToTextFields()  {
        // Create of the bottom line layer
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: emailTextField.frame.height + 5, width: emailTextField.frame.width, height: 1.5)
        bottomLine.backgroundColor = UIColor.darkGray.cgColor
        emailTextField.layer.addSublayer(bottomLine) // Add the bottom line layer
    }
    
    //************ Keyboard beahviours methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
