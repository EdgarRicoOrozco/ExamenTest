//
//  main.swift
//  ExamenTest
//
//  Created by Phinder 2022 on 26/02/23.
//

import UIKit

class TabBarGeneric: UIViewController {

    override func viewDidLoad() {
        
        let tabBar = UITabBarController()
        
        super.viewDidLoad()
        let firstVC = HomeMain.createModule()
        let secondVC = ProfileMain.createModule()
            
        
            firstVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Store"), tag: 0)
            secondVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Profile"), tag: 1)
            
            
            tabBar.delegate = self
            tabBar.setViewControllers([firstVC, secondVC], animated: true)
            addChild(tabBar)
                self.view.addSubview(tabBar.view)
                tabBar.didMove(toParent: self)
        
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
    
    
    
}
extension TabBarGeneric: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard let fromView = tabBarController.selectedViewController?.view, let toView = viewController.view else {
            return false
        }
        
        if fromView == toView {
            return false
        }
        
        UIView.transition(from: fromView, to: toView, duration: 0.3, options: [.transitionCrossDissolve], completion: nil)
        
        return true
    }
}

