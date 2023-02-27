//
//  AppDelegate.swift
//  ExamenTest
//
//  Created by Phinder 2022 on 25/02/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let navigation = UINavigationController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        navigation.isNavigationBarHidden = true
        
        //Creacion
        
        Thread.sleep(forTimeInterval: 2)
        
        let x = TabBarGeneric()
        
        navigation.pushViewController(x, animated: true)
        return true
    }


}

