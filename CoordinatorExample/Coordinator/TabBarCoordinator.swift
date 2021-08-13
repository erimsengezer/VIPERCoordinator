//
//  TabBarCoordinator.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//

import UIKit

class TabBarCoordinator: Coordinator {
    private enum Constants {
        enum Color {
            static let tabBarTintColor: UIColor = UIColor(red: 255 / 255, green: 100 / 255, blue: 0 / 255, alpha: 1)
        }
    }
    
    
    var navigationController: UINavigationController
    let tabBarController: UITabBarController
    
    var homeViewCoordinator: Coordinator
    var profileCoordinator: Coordinator
    
    
    init() {
        navigationController = UINavigationController()
        tabBarController = UITabBarController()
        
        homeViewCoordinator = HomeViewCoordinator()
        profileCoordinator = ProfileCoordinator()
    }
    
    func start() {
        homeViewCoordinator.start()
        profileCoordinator.start()
        
        homeViewCoordinator.navigationController.topViewController?.title = "Home"
        
        profileCoordinator.navigationController.topViewController?.title = "Profile"
        
        let controllers: [UIViewController] = [
            homeViewCoordinator.navigationController,
            profileCoordinator.navigationController
        ]
        
        tabBarController.setViewControllers(controllers, animated: false)
        tabBarController.selectedIndex = TabbarItemPositionType.home.rawValue
    }
    
    
}
