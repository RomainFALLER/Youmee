//
//  User.swift
//  Youmee
//
//  Created by Benoit Fagot on 16/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import Foundation

class User{
    
    var user_id: String
    var username: String
    var photo: String
    var email: String
    var bio: String
    var birthday: String
    var phoneNum: String
    var city: String
    var networks: [Network]

    init(id: String, username: String, photo: String, email: String, bio: String, birthday: String, phoneNum: String,ville:String,networks: [Network])
    {
        self.user_id = id
        self.username = username
        self.photo = photo
        self.email = email
        self.bio = bio
        self.birthday = birthday
        self.phoneNum = phoneNum
        self.city = ville
        self.networks = networks
    }
    convenience init() {
        self.init(id: "",username: "", photo: "", email: "", bio: "", birthday: "", phoneNum: "",ville: "",networks: NetworkService.shared.initArrayOfNetwork())
    }
}
