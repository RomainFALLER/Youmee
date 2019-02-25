//
//  LastVisitedPlaceTableViewCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 20/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

protocol visitedPlaceSelectionDelegate {
    func didSelect(cell: UITableViewCell)
}
class LastVisitedPlaceTableViewCell: UITableViewCell {
    var delegate :visitedPlaceSelectionDelegate?
    @IBOutlet weak var lastVisitedPlaceCollectionView: UICollectionView!
    
   @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    var user: User!
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
    func configureUser(myUser: User){
        user = myUser
    }

}
extension LastVisitedPlaceTableViewCell: UICollectionViewDataSource,UICollectionViewDelegate{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if user.visitedPlaces.count <= 4{
            return user.visitedPlaces.count
        }
        else{
            return 4
        }
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "visitedPlaceCellIdentifier", for: indexPath) as? VisitedPlaceCollectionViewCell else {
            return UICollectionViewCell()
        }

        let visitedPlace = user.visitedPlaces[indexPath.row]
        cell.tag = indexPath.row
        cell.configure(myImage: visitedPlace.images.first!, myTitle: visitedPlace.title, mySubtitle: visitedPlace.subTitle, myNumberOfLike: visitedPlace.numberOfLike, ImageIsLike: visitedPlace.imageIsLike)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didSelect(cell: self)
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
