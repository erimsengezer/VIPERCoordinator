//
//  AppDelegate.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var coordinator: ApplicationCoordinator?
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        guard let window = window else { return false }
        self.coordinator = ApplicationCoordinator(window: window)
        self.coordinator?.start()
        
        return true
    }
}

