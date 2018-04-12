//
//  ViewController.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//

import UIKit

class ViewController: HeaderViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    }

    override func loadTitle() -> String? {
        return "Home"
    }
    
    override func loadRightBtn() -> [String]? {
        return ["plus"]
    }
    
}

