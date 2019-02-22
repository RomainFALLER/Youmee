//
//  NetworkTableViewCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class NetworkTableViewCell: UITableViewCell{

    @IBOutlet weak var networkcollectionView: UICollectionView!
    
    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    var user: User!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewHeight.constant = 20
        self.networkcollectionView.dataSource = self
        self.networkcollectionView.delegate = self

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureUser(myUser: User){
        user = myUser
    }
}
extension NetworkTableViewCell: UICollectionViewDataSource,UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return user.networks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NetworkCellIdentifier", for: indexPath) as? NetworkCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(image: user.networks[indexPath.row].name)
        return cell
    }
}
extension NetworkTableViewCell: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let yourWidth = collectionView.bounds.width/3.0 - 1
        let yourHeight = yourWidth
        
        return CGSize(width: yourWidth, height: yourHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}
