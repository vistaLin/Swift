//
//  AppDelegate.swift
//  SwiftDemo
//
//  Created by xingkuanlin on 2020/12/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window:UIWindow!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.main.bounds)

        window?.rootViewController = UINavigationController.init(rootViewController: ViewController.init())

        window?.backgroundColor = UIColor.white

        window?.makeKeyAndVisible()

        return true
    }

}

