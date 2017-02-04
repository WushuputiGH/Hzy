//
//  HzyTabBarControllerDelegate.swift
//  Hzy
//
//  Created by huang.ziyang on 17/2/4.
//  Copyright © 2017年 Wushuputi. All rights reserved.
//

import UIKit

class HzyTabBarControllerDelegate: NSObject, UITabBarControllerDelegate {
    
    /// 表示使用该代理的UITabBarController
    weak var tabBarController: UITabBarController!
    
    init(tabBarController: UITabBarController) {
        super.init()
        self.tabBarController = tabBarController
        tabBarController.view.addGestureRecognizer(UIPanGestureRecognizer.init(target: self, action: Selector(("panGesture:"))))
    }
    
   
    
    func tabBarController(_ tabBarController: UITabBarController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
    }

}
