//
//  VisitedPlaceCollectionViewCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 20/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class VisitedPlaceCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var numberOfLike: UILabel!
    
    var likeButtonIsTap: Bool!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(myImage: String,myTitle: String,mySubtitle: String,myNumberOfLike: Int, ImageIsLike: Bool){
        image.image = UIImage(named: myImage)
        title.text = myTitle
        subtitle.text = mySubtitle
        numberOfLike.text = "\(myNumberOfLike)"
        likeButtonIsTap = ImageIsLike
    }
    @IBAction func likeButtonDidTap(_ sender: Any) {
        switchLikeButton()
    }
    private func switchLikeButton(){
        if likeButtonIsTap == false{
            numberOfLike.text = "\(Int(numberOfLike.text!)! + 1)"
            likeButton.setBackgroundImage(UIImage(named: "heart_icon_is_tap"), for: .normal)
            likeButtonIsTap = true
        }
        else {
            likeButton.setBackgroundImage(UIImage(named: "heart_icon"), for: .normal)
            numberOfLike.text = "\(Int(numberOfLike.text!)! - 1)"
            likeButtonIsTap = false
        }
    }
    
}
