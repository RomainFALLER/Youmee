//
//  ProfileInformationCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class ProfileInformationCell: UITableViewCell {
    
    let user = User(id: "1", username: "wdyben", photo: "Facebook", email: "benoitfagot@gmail.com", bio: "bonjour je m'appelle benoit", birthday: "31/12/1994", phoneNum: "",ville: "Paris")
    let userservice = UserService()

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        fillingWithUserInformation()

    }
    private func fillingWithUserInformation(){
        usernameLabel.text = user.username
        let age = userservice.calcAge(birthday: user.birthday)
        ageLabel.text = String(age)
        bioLabel.text = user.bio
        cityLabel.text = user.city
        userImage.image = UIImage(named: user.photo)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
