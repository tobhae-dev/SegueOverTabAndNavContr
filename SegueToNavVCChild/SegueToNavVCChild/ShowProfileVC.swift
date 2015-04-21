//
//  ShowProfileVC.swift
//  SegueToNavVCChild
//
//  Created by Tobias Hähnel on 21/04/15.
//  Copyright (c) 2015 StackOverflow. All rights reserved.
//

import UIKit

class ShowProfileVC: UIViewController {

    @IBOutlet weak var textLabel: UILabel! {
        didSet {
            textLabel.text = name
        }
    }
    
    var name = "Label"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
