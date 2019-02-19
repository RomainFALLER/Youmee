//
//  emailLoginController.swift
//  Youmee
//
//  Created by FALLER Romain on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class emailLoginController : UIViewController {
    
    // Variables and UI components
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBottomBorderToTextFields()
    }
    
    // Method to set the bottom border to the text field
    func setBottomBorderToTextFields()  {
        // Create of the bottom line layer
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: emailTextField.frame.height + 5, width: emailTextField.frame.width, height: 1.5)
        bottomLine.backgroundColor = UIColor.darkGray.cgColor
        emailTextField.layer.addSublayer(bottomLine) // Add the bottom line layer
    }
}
