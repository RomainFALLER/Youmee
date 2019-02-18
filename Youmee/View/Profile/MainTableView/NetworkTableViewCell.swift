//
//  NetworkTableViewCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class NetworkTableViewCell: UITableViewCell {

    @IBOutlet weak var networkcollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.networkcollectionView.dataSource = self
        self.networkcollectionView.delegate = self

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension NetworkTableViewCell: UICollectionViewDataSource,UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return netWorkList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NetworkCellIdentifier", for: indexPath) as? NetworkCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(image: netWorkList[indexPath.row], networkName: netWorkList[indexPath.row])
        return cell
    }
}
