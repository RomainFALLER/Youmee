//
//  ProfileInformationCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 17/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class ProfileInformationCell: UITableViewCell {
    

    let userservice = UserService()

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    var user: User!
    @IBAction func updateProfileDidTap(_ sender: Any) {
        print("Edit Profil Did tap")
        
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        applyfont()
        makeCirculaImageProfil()
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
    private func applyfont(){
        
        usernameLabel.font = UIFont.fontWithStyle(ofSize: 20, font: .AvenirNext, style: .Bold)
        ageLabel.font = UIFont.textFont()
        bioLabel.font = UIFont.textFont()
        cityLabel.font = UIFont.textFont()
    }
    func configureUser(myUser: User){
        user = myUser
        fillingWithUserInformation()
    }
}
