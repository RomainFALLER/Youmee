//
//  phoneLoginController.swift
//  Youmee
//
//  Created by FALLER Romain on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class phoneLoginController : UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var phoneCountryIndicatorTextField: UITextField!
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBottomBorderToTextFields(myTextField: phoneNumberTextField)
        self.setBottomBorderToTextFields(myTextField: phoneCountryIndicatorTextField)
        phoneNumberTextField.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        phoneNumberTextField.becomeFirstResponder()
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
