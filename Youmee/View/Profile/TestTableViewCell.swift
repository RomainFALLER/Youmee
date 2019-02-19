//
//  TestTableViewCell.swift
//  Youmee
//
//  Created by Benoit Fagot on 19/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    @IBOutlet var bio: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
