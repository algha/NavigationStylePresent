//
//  UIDevice.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//

import UIKit

extension UIDevice{
    
    class func Model()-> String{
        return self.current.model
    }
    
    class func Version()-> String{
        return self.current.systemVersion
    }
    
    class func ModelVersion()->String{
        return "\(self.Model) \(self.Version())"
    }
    
    class func UUID()-> String{
        return (self.current.identifierForVendor?.uuidString)!
    }
}

