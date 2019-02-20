//
//  LastVisitedPlaceTableViewCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 20/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class LastVisitedPlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var lastVisitedPlaceCollectionView: UICollectionView!
    
   @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewHeight.constant = 20
        self.lastVisitedPlaceCollectionView.dataSource = self
        self.lastVisitedPlaceCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension LastVisitedPlaceTableViewCell: UICollectionViewDataSource,UICollectionViewDelegate{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "visitedPlaceCellIdentifier", for: indexPath) as? VisitedPlaceCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(myImage: "Facebook", myTitle: "Saint Petersbourg", mySubtitle: "voici une description un peu pas comme les autres #Russia #cookicock", myNumberOfLike: "86")
        return cell
    }
}
extension LastVisitedPlaceTableViewCell: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let yourWidth = collectionView.bounds.width/2.0 - 1
        let yourHeight = yourWidth * 2
        return CGSize(width: yourWidth, height: yourHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
