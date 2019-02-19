//
//  ProfileInformationCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class ProfileInformationCell: UITableViewCell {
    
    let user = User(id: "1", username: "wdyben", photo: "Facebook", email: "benoitfagot@gmail.com", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at mollis lorem, sed elementum ex. Morbi sagittis quam quis dolor porta, eget sollicitudin lorem laoreet. In et interdum nunc. Nam sem orci, pellentesque nec egestas sit .", birthday: "31/12/1994", phoneNum: "",ville: "Paris",networks: NetworkService.shared.initArrayOfNetwork())
    let userservice = UserService()

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    @IBAction func updateProfileDidTap(_ sender: Any) {
        print("update Profil Did tap")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        makeCirculaImageProfil()
        fillingWithUserInformation()

    }
    private func makeCirculaImageProfil(){
        userImage.layer.borderWidth = 0.5
        userImage.layer.masksToBounds = false
        userImage.layer.borderColor = UIColor.black.cgColor
        userImage.layer.cornerRadius = userImage.frame.height/2
        userImage.clipsToBounds = true
    }
    private func fillingWithUserInformation(){
        usernameLabel.text = user.username
        let age = String(userservice.calcAge(birthday: user.birthday))
        ageLabel.text = "\(age) ans"
        bioLabel.text = user.bio
        cityLabel.text = user.city
        userImage.image = UIImage(named: user.photo)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
