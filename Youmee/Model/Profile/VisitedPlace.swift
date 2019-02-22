//
//  VisitedPlace.swift
//  Youmee
//
//  Created by Benoit Fagot on 22/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import Foundation

class VisitedPLace{
    var title: String
    var subTitle: String
    var image: String
    var imageIsLike: Bool
    var numberOfLike: Int
    
    init(title: String, subTitle: String,image: String,imageIsLike: Bool,numberOfLike: Int) {
        self.title = title
        self.subTitle = subTitle
        self.image = image
        self.imageIsLike = imageIsLike
        self.numberOfLike = numberOfLike
    }
    convenience init(){
        self.init(title: "Saint Peter", subTitle: "Sous Titre", image: "Facebook", imageIsLike: false, numberOfLike: 88)
    }
}
