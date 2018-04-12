//
//  NagivationStyleController.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//

import UIKit

class NavigationStyleController: UIViewController {
    
    let kAnimator = Animator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitioningDelegate = self
    }
}


extension NavigationStyleController : UIViewControllerTransitioningDelegate{
    
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        kAnimator.presenting = true
        return kAnimator
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        kAnimator.presenting = false
        return kAnimator
    }
}


