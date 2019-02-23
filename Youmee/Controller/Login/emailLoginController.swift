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
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        self.view.endEditing(true)
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        if (isValidEmail(testStr: sender.text ?? ""))
        {
            emailLoginButton.isEnabled=true
            emailLoginButton.setBackgroundImage(UIImage(named: "emailLoginButtonActive"), for: .normal)
        } else
        {
            emailLoginButton.isEnabled=false
            emailLoginButton.setBackgroundImage(UIImage(named: "emailLoginButtonInnactive"), for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBottomBorderToTextFields(myTextField: emailTextField)
        emailTextField.delegate = self
        emailLoginButton.isEnabled=false
        emailLoginButton.addTarget(self, action: #selector(editingChanged) , for: .editingChanged)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        emailTextField.becomeFirstResponder()
    }
    
    // Method to validate if the string enterred is an email format
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    // Method to set the bottom border to the text field
    func setBottomBorderToTextFields(myTextField : UITextField)  {
        // Create of the bottom line layer
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: myTextField.frame.height + 5, width: myTextField.frame.width, height: 1.5)
        bottomLine.backgroundColor = UIColor.darkGray.cgColor
        myTextField.layer.addSublayer(bottomLine) // Add the bottom line layer
    }
    
    //************ Keyboard beahviours methods
    
    // Method to dismiss the keyboard when done button did tap
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
