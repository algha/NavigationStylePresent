//
//  UIScreen.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//

import Foundation

import UIKit


extension UIScreen{
    
    static var Width: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    static var Height :CGFloat {
        return UIScreen.main.bounds.height
    }
    
    static var statusbarHeight: CGFloat{
        return UIApplication.shared.statusBarFrame.size.height
    }
}
