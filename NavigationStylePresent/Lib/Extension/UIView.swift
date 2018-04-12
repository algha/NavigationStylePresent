//
//  UIView.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//

import Foundation

import UIKit

extension UIView {
    
    var PointX: CGFloat{
        set(newValue){
            self.frame.origin.x = newValue
        }
        get{
            return self.frame.origin.x
        }
    }
    
    var PointY: CGFloat{
        set(newValue){
            self.frame.origin.y = newValue
        }
        get{
            return self.frame.origin.y
        }
    }
    
    var Width: CGFloat{
        set(newValue){
            self.frame.size.width = newValue
        }
        get{
            return self.frame.width
        }
    }
    
    var Height: CGFloat {
        set(newValue){
            self.frame.size.height = newValue
        }
        get{
            return self.frame.height
        }
    }
    
    func HY() -> CGFloat {
        return self.Height + self.PointY
    }
    
    
    func WX() -> CGFloat {
        return self.Width + self.PointX
    }

}
