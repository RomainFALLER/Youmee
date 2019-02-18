//
//  NetworkService.swift
//  Youmee
//
//  Created by Benoit Fagot on 18/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import Foundation

class NetworkService{
    
    static var shared = NetworkService()
    private init() {}
    
    func initArrayOfNetwork()->[Network]{
        var networks = [Network]()
        for networkname in netWorkList {
            networks.append(Network(name: networkname, status: .privateNetwork, socialImage: "", logoImage: networkname))
        }
        return networks
    }
}
