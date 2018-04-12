//
//  DetailController.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//

import UIKit

class DetailController: NavigationStyleController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let btn = UIButton()
        btn.backgroundColor = UIColor.blue
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.setTitle("next", for: .normal)
        btn.addTarget(self, action: #selector(self.back), for: .touchUpInside)
        self.view.addSubview(btn)
        
        self.view.backgroundColor = UIColor.green
    }
    
    @objc func back(){
        self.dismiss(animated: true, completion: nil)
    }
    
//    override func loadTitle() -> String? {
//        return "Detail"
//    }
//    
//    override func loadLeftBtn() -> [String]? {
//        return ["back"]
//    }
//
//    override func buttonEvent(btn: HeaderButtonItem) {
//        print("btn place: \(btn.buttonPlace)")
//        switch btn.buttonPlace {
//        case .Left:
//            self.dismiss(animated: true, completion: nil)
//        default:
//            break
//        }
//    }
//   

}
