//
//  ProfileVC.swift
//  Youmee
//
//  Created by Benoit Fagot on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController, visitedPlaceSelectionDelegate {
    
    func didSelect(cell: UITableViewCell) {
        self.performSegue(withIdentifier: "segueToPrintAlbum", sender: cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToPrintAlbum"{
            let succesVC = segue.destination as! visitedPlaceAlbumVC
            if let cell = sender as? VisitedPlaceCollectionViewCell{
                succesVC.visitedPlace = user.visitedPlaces[cell.tag]
            }
            
        }
    }

    @IBOutlet weak var profilTableView: UITableView!
    var user = User(id: "1", username: "wdyben", photo: "Facebook", email: "benoitfagot@gmail.com", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at mollis lorem, sed elementum ex. Morbi sagittis quam quis dolor porta, eget sollicitudin lorem laoreet. In et interdum nunc. Nam sem orci, pellentesque nec egestas sit .", birthday: "31/12/1994", phoneNum: "",ville: "Paris",networks: NetworkService.shared.initArrayOfNetwork(),visitedPlaces: [VisitedPLace(images: ["Facebook","Snapchat","Whatsapp","Facebook"]),VisitedPLace(images: ["Snapchat","Snapchat","Snapchat","saint_peter","Snapchat"]),VisitedPLace(images: ["Whatsapp","Whatsapp","Whatsapp","Whatsapp","Whatsapp"])])
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilTableView.rowHeight = UITableView.automaticDimension
        profilTableView.estimatedRowHeight = 1000
        profilTableView.reloadData()
    }

}
extension ProfileVC :UITableViewDataSource{

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        if row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileInformationCellIdentifier") as! ProfileInformationCell
            cell.selectionStyle = .none
            cell.configureUser(myUser: user)
            return cell
        }
        else if row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileNetworkCellIdentifier") as! NetworkTableViewCell
            cell.configureUser(myUser: user)
            cell.selectionStyle = .none
            cell.frame = tableView.bounds
            cell.layoutIfNeeded()
            cell.networkcollectionView.reloadData()
            cell.collectionViewHeight.constant = (cell.bounds.width/3) * 2
            return cell
        }
        else if row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "profileVisitedPlaceCellIdentifier") as! LastVisitedPlaceTableViewCell
            cell.configureUser(myUser: user)
            cell.selectionStyle = .none
            cell.frame = tableView.bounds
            cell.layoutIfNeeded()
            cell.lastVisitedPlaceCollectionView.reloadData()
            let multplier = calculateMultiplierForHeight(countOfCell: user.visitedPlaces.count)
            cell.collectionViewHeight.constant = (cell.bounds.width/2) * multplier
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
    private func calculateMultiplierForHeight(countOfCell: Int) -> CGFloat{
        if countOfCell == 0{
            return 0
        }
        else if countOfCell <= 2{
            return 2
        }
        else if countOfCell > 2, countOfCell <= 4{
            return 4
        }
        return 0
    }
}
