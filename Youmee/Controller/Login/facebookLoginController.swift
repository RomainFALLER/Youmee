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
    }
    
    override func viewDidAppear(_ animated: Bool) {
        createScrollViewContent(imageArray: imageArray)
    }
    
    @IBAction func facebookLoginDidTap(_ sender: Any) {
    }
    
    
    @IBAction func phoneLoginDidTap(_ sender: Any) {
    }
    
    
    @IBAction func emailLoginDidTap(_ sender: Any) {
    }
    
    func createScrollViewContent(imageArray: [UIImage]) {
        for i in 0..<imageArray.count
        {
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.tutorialScrollView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.tutorialScrollView.frame.width, height: self.tutorialScrollView.frame.height)
            tutorialScrollView.contentSize.width = tutorialScrollView.frame.width * CGFloat(i+1)
            tutorialScrollView.addSubview(imageView)

        }
    }
    
}
