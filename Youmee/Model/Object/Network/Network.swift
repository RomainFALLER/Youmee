//
//  Network.swift
//  Youmee
//
//  Created by Benoit Fagot on 18/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import Foundation

class Network {
    
    var status: NetworkStatus
    var name: String
    var socialImage: String{
        didSet{
            if socialImage == ""{
                socialImage = logoImage
            }
        }
    }
    var logoImage: String
    
    init(name: String,status: NetworkStatus,socialImage: String,logoImage: String) {
        self.name = name
        self.status = status
        self.socialImage = socialImage
        self.logoImage = logoImage
    }
    convenience init() {
        self.init(name: "", status: .privateNetwork, socialImage: "", logoImage: "")
    }
    
}
