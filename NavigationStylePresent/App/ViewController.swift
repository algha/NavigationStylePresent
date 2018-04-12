//
//  ViewController.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//

import UIKit

class ViewController: NavigationStyleController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.view.backgroundColor = UIColor.red
        
        let btn = UIButton()
        btn.backgroundColor = UIColor.blue
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.setTitle("next", for: .normal)
        btn.addTarget(self, action: #selector(self.nextPage), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    
      @objc func nextPage(){
        print("abcdkljkl")
        self.present(DetailController(), animated: true, completion: nil)
    }

//    override func loadTitle() -> String? {
//        return "Home"
//    }
//
//    override func loadRightBtn() -> [String]? {
//        return ["plus"]
//    }
//
//    override func buttonEvent(btn: HeaderButtonItem) {
//        print("btn place: \(btn.buttonPlace)")
//        switch btn.buttonPlace {
//        case .Right:
//            self.present(DetailController(), animated: true, completion: nil)
//        default:
//            break
//        }
//    }
}
