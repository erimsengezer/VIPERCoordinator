//
//  HomeViewCoordinator.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//

import UIKit

protocol HomeViewCoordinatorProtocol {
    
}

class HomeViewCoordinator: Coordinator {
    var navigationController: UINavigationController = UINavigationController()
    
    func start() {
        guard let appCoordinator = UIApplication.shared.appCoordinator else { return }
        guard let homeView = HomeViewModuleBuilder.generate(coordinatorProtocol: appCoordinator) else { return }
        
        homeView.tabBarItem.title = TabBarItem.home.title
        navigationController = UINavigationController(rootViewController: homeView)
    }
}
