//
//  NetworkCollectionViewCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 18/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class NetworkCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var networkImage: UIImageView!
    
    @IBOutlet weak var networkNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure(image: String, networkName: String){
        networkImage.image = UIImage(named: "\(image)")
        networkNameLabel.text = networkName
    }
}
