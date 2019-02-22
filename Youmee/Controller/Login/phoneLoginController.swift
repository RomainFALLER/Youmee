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
    @IBOutlet weak var phoneLoginLabel: UILabel!
    @IBOutlet weak var phoneInformationsLabel: UILabel!
    @IBOutlet weak var phoneNextButton: UIButton!
    
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editingChanged(_ sender: Any) {
        if (isValidPhone(testStr: phoneNumberTextField.text ?? "")) {
            phoneNextButton.setBackgroundImage(UIImage(named: "phoneNextButtonActive") , for: .normal)
        } else {
            phoneNextButton.setBackgroundImage(UIImage(named: "phoneNextButtonInnactive") , for: .normal)
        }
    }
    
    @IBAction func phoneNextButtonDidTap(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLoginLabel.font = UIFont.fontWithStyle(ofSize: 17, font: .AvenirNext, style: .DemiBold)
        phoneInformationsLabel.font = UIFont.fontWithStyle(ofSize: 11, font: .AvenirNext, style: .Regular)
        self.setBottomBorderToTextFields(myTextField: phoneNumberTextField)
        self.setBottomBorderToTextFields(myTextField: phoneCountryIndicatorTextField)
        phoneNumberTextField.delegate = self
        phoneNextButton.addTarget(self, action: #selector(editingChanged) , for: .editingChanged)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        phoneNumberTextField.becomeFirstResponder()
    }
    
    // Method to validate if the string enterred is an email format
    func isValidPhone(testStr:String) -> Bool {
        let phoneRegEx = "^\\d{9}$"
        let phoneTest = NSPredicate(format:"SELF MATCHES %@", phoneRegEx)
        return phoneTest.evaluate(with: testStr)
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
