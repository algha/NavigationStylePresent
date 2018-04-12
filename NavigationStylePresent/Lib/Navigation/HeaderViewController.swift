//
//  HeaderViewController.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//


import UIKit

protocol HeaderViewControllerDelegate {
    func loadTitle() -> String?
    func loadTitleDescription() -> [String]?
    func loadLeftBtn() -> [String]?
    func loadRightBtn() -> [String]?
}


class HeaderViewController: UIViewController, HeaderViewControllerDelegate {
    
    var header: Header!
    var titleDescription: String!
    
    var headerHeight: CGFloat = 64
    
    var mainHeight: CGFloat{
        return self.view.Height - self.headerHeight
    }
    
    var tabContentHeight: CGFloat{
        return self.mainHeight - 50
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*create header*/
        header = Header()
        header.frame = CGRect(x: 0, y: 0, width: self.view.Width, height: self.headerHeight)
        header.setUp()
        header.backgroundColor = UIColor.white
        self.view.addSubview(header)
        
        /*set title*/
        if self.loadTitle() != nil{
            self.header.addHeader(title: self.loadTitle()!)
        }
        
        /*set title with description*/
        if self.loadTitleDescription() != nil{
            let titleDesc = self.loadTitleDescription()
            self.header.addHeader(title: titleDesc![0], description: titleDesc![0])
        }
        
        if self.loadLeftBtn() != nil{
            for img in self.loadLeftBtn()!{
                self.header.addLeftButton(img: img)
            }
        }
        
        if self.loadRightBtn() != nil{
            for img in self.loadRightBtn()!{
                self.header.addRightButton(img: img)
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadTitle() -> String? {
        return nil
    }
    
    func loadTitleDescription() -> [String]? {
        return nil
    }
    
    func loadLeftBtn() -> [String]? {
        return nil
    }
    
    func loadRightBtn() -> [String]? {
        return nil
    }
    
}
