//
//  Header.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//


import UIKit

class Header: UIView {
    
    var main: UIView!
    
    var headerTitle: HeaderTitle!
    var leftButtonItems : [HeaderButtonItem] = []
    var rightButtonItems: [HeaderButtonItem] = []
    
    func setUp(){
        
        let border = UIView()
        border.frame = CGRect(x: 0, y: self.Height - 1, width: self.Width, height: 1)
        border.backgroundColor = UIColor.gray
        self.addSubview(border)
        
        main = UIView()
        main.frame = CGRect(x: 0, y: UIScreen.statusbarHeight, width: self.Width, height: 44)
        self.addSubview(main)
        
        headerTitle = HeaderTitle()
        headerTitle.frame = CGRect(x: 100, y: 0, width: self.Width - 200, height: main.Height)
        main.addSubview(headerTitle)
    }
    
    func addHeader(title: String){
        headerTitle.initHeaderTitle(title: title)
    }
    
    func addHeader(title: String, description: String){
        headerTitle.initHeaderTitle(title: title, description: description)
    }
    
    func addLeftButton(img: String){
        
        let btn = HeaderButtonItem()
        btn.frame = CGRect(x: self.leftButtonItems.count.floatVal * 44, y: 0, width: 44, height: 44)
        btn.setImage(UIImage(named: img), for: .normal)
        main.addSubview(btn)
        
        self.leftButtonItems.append(btn)
        
    }
    
    func addRightButton(img: String){
        
        let btn = HeaderButtonItem()
        btn.frame = CGRect(x: self.Width - (1 + self.rightButtonItems.count.floatVal) * 44, y: 0, width: 44, height: 44)
        btn.setImage(UIImage(named: img), for: .normal)
        main.addSubview(btn)
        
        self.rightButtonItems.append(btn)
    }
    
    
}

