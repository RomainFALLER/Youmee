//
//  ProfileVC.swift
//  Youmee
//
//  Created by Benoit Fagot on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var profilTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profilTableView.rowHeight = UITableView.automaticDimension
        profilTableView.estimatedRowHeight = 600
        profilTableView.reloadData()
    }
}
extension ProfileVC :UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        if row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileInformationCellIdentifier") as! ProfileInformationCell
            return cell
        }
        if row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileNetworkCellIdentifier") as! NetworkTableViewCell
            print("network cell create")
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
extension ProfileVC : UITableViewDelegate{
}

