//
//  visitedPlaceAlbumVC.swift
//  Youmee
//
//  Created by Benoit Fagot on 25/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class visitedPlaceAlbumVC: UIViewController {
    var visitedPlace: VisitedPLace!
    
    @IBOutlet weak var albumScrollView: UIScrollView!
    
    @IBOutlet weak var titlePlace: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        albumScrollView.frame = self.view.frame
        createScrollView()
        fillTheview()
    }
    
    @IBAction func dismissButtonDidTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    private func createScrollView(){
        for i in 0..<visitedPlace.images.count
        {
            let imageView = UIImageView()
            imageView.image = UIImage(named: visitedPlace.images[i])
            let xPosition = self.albumScrollView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.albumScrollView.frame.width, height: self.albumScrollView.frame.height)
            albumScrollView.contentSize.width = albumScrollView.frame.width * CGFloat(i + 1)
            albumScrollView.addSubview(imageView)
            NSLayoutConstraint.activate([
                imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
                ])
        }
    }
    private func fillTheview(){
        titlePlace.text = visitedPlace.title
    }

}
