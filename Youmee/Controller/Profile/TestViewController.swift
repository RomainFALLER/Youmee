//
//  TestViewController.swift
//  Youmee
//
//  Created by Benoit Fagot on 19/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import UIKit

class TestViewController: UIViewController,UITableViewDataSource {
    

    @IBOutlet weak var tab: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tab.rowHeight = UITableView.automaticDimension
        tab.estimatedRowHeight = 600
        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as! TestTableViewCell
        cell.bio.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at mollis lorem, sed elementum ex. Morbi sagittis quam quis dolor porta, eget sollicitudin lorem laoreet. In et interdum nunc. Nam sem orci, pellentesque nec egestas sit amet, bibendum non tellus. Sed ut egestas leo, in tristique tortor. Vivamus vestibulum, nisl vitae convallis dictum, tellus est semper libero, at lacinia felis sapien non nunc. Cras ac vulputate libero, finibus ultricies ex. Pellentesque sed pharetra justo. Ut suscipit justo sed nisi molestie, sit amet sagittis ligula tincidunt. Quisque consectetur est nibh, sed mollis mauris consectetur vel. Curabitur ultrices justo nec odio consequat aliquam. Maecenas scelerisque, ipsum id gravida vehicula, eros arcu blandit metus, nec faucibus dolor turpis eget magna. Ut et nunc non lacus egestas finibus. Vestibulum in turpis vel ipsum lacinia pretium ut ac ante."
        return cell
    }

}
