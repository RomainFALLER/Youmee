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
    var images: [String]
    var imageIsLike: Bool
    var numberOfLike: Int
    
    init(title: String, subTitle: String,images: [String],imageIsLike: Bool,numberOfLike: Int) {
        self.title = title
        self.subTitle = subTitle
        self.images = images
        self.imageIsLike = imageIsLike
        self.numberOfLike = numberOfLike
    }
    convenience init(images: [String]){
        self.init(title: "Saint Peter", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pharetra faucibus mi eu tristique. Morbi turpis elit, viverra nec efficitur ac, dapibus at elit. Suspendisse iaculis diam ut sem maximus, et egestas turpis bibendum. Pellentesque tristique magna ut magna fermentum, at ultricies massa iaculis. Praesent tincidunt venenatis enim, eu iaculis purus tincidunt non. Integer vitae arcu ac magna suscipit aliquam. Donec at sapien lobortis, ultrices est nec, bibendum justo.", images: images, imageIsLike: false, numberOfLike: 88)
    }
}
