//
//  HeaderButtonItem.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//
import UIKit

enum ButtonPlace {
    case Left
    case Right
    case Center
}

class HeaderButtonItem: UIButton {
    
    var buttonPlace: ButtonPlace!
    var index      : Int!
    
}
