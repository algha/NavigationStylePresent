//
//  HeaderTitle.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//


import UIKit
//
//enum HeaderTitleType: Int {
//    case Title
//    case TitleDescription
//    case Image
//}

class HeaderTitle: UIView {
    
    var titleView      : UILabel!
    var desctiptionView: UILabel!
    
    func initHeaderTitle(title: String){
        viewForTitle(title: title)
        titleView.frame = CGRect(x: 0, y: 0, width: self.Width, height: self.Height)
    }
    
    func initHeaderTitle(title: String, description: String){
        viewForTitle(title: title)
        viewForDescription(description: description)
        
        titleView.frame       = CGRect(x: 0, y: 0, width: self.Width, height: self.Height.half)
        desctiptionView.frame = CGRect(x: 0, y: titleView.HY(), width: self.Width, height: self.Height.half)
    }
    
    func viewForTitle(title: String){
        titleView = UILabel()
        titleView.text = title
        titleView.textAlignment = .center
        titleView.font = UIFont.systemFont(ofSize: 22)
        self.addSubview(titleView)
    }
    
    func viewForDescription(description: String){
        desctiptionView = UILabel()
        self.addSubview(desctiptionView)
    }
    
}
