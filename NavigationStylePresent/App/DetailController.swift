//
//  DetailController.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//

import UIKit

class DetailController: HeaderViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func loadTitle() -> String? {
        return "Detail"
    }
    
    override func loadLeftBtn() -> [String]? {
        return ["back"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}
