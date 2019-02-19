//
//  NetworkCollectionViewCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 18/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class NetworkCollectionViewCell: UICollectionViewCell  {

    
    @IBOutlet weak var networkImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()        
    }
    func configure(image: String){

        networkImage.image = UIImage(named: "\(image)")
        
    }
}
