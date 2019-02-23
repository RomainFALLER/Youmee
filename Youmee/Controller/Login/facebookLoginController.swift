//
//  loginController.swift
//  Youmee
//
//  Created by FALLER Romain on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class facebookLoginController : UIViewController {
    
    @IBOutlet weak var tutorialScrollView: UIScrollView!
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageArray = [#imageLiteral(resourceName: "viewTutorial1"),#imageLiteral(resourceName: "viewTutorial1")]
        self.createImageView(imageArray: imageArray)
    }
    
    @IBAction func facebookLoginDidTap(_ sender: Any) {
    }
    
    
    @IBAction func phoneLoginDidTap(_ sender: Any) {
    }
    
    
    @IBAction func emailLoginDidTap(_ sender: Any) {
    }
    
    func createImageView(imageArray: [UIImage]) {
        for i in 0..<imageArray.count
        {
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            
            let xPosition = self.tutorialScrollView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.tutorialScrollView.frame.width, height: self.tutorialScrollView.frame.height)
            tutorialScrollView.contentSize.width = tutorialScrollView.frame.width * CGFloat(i+1)
            tutorialScrollView.contentSize.height = tutorialScrollView.frame.height
            tutorialScrollView.addSubview(imageView)
        }
    }
    
}
