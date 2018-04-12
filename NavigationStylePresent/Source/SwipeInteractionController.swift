//
//  SwipeInteractionController.swift
//  NavigationStylePresent
//
//  Created by gaaboo on 2018/04/12.
//  Copyright © 2018年 algha. All rights reserved.
//


import UIKit

class SwipeInteractionController: UIPercentDrivenInteractiveTransition {
    
    var interactionInProgress = false
    
    private var shouldCompleteTransition = true
    private weak var viewController: UIViewController!
    
    init(viewController: UIViewController) {
        super.init()
        self.viewController = viewController
        prepareGestureRecognizer(in: viewController.view)
    }
    
    private func prepareGestureRecognizer(in view: UIView) {
        let gesture = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handleGesture(_:)))
        gesture.edges = .left
        view.addGestureRecognizer(gesture)
    }
    
    @objc func handleGesture(_ gestureRecognizer: UIScreenEdgePanGestureRecognizer) {
        let translation = gestureRecognizer.translation(in: gestureRecognizer.view!.superview!)
        var progress = (translation.x / 200)
        progress = CGFloat(fminf(fmaxf(Float(progress), 0.0), 1.0))
        
        switch gestureRecognizer.state {
        case .began:
            interactionInProgress = true
            
        case .changed:
            shouldCompleteTransition = progress > 0.5
            print("x: \(translation.x)")
            viewController.view.PointX = translation.x
            update(progress)
        case .cancelled:
            interactionInProgress = false
            cancel()
        case .ended:
            interactionInProgress = false
            if shouldCompleteTransition {
                viewController.dismiss(animated: true, completion: nil)
                finish()
            } else {
                cancel()
            }
        default:
            break
        }
    }
}

