//
//  ProfileCoordinator.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//

import Foundation
import UIKit

protocol ProfileCoordinatorProtocol {
    
}

class ProfileCoordinator: Coordinator {
    var navigationController: UINavigationController = UINavigationController()
    
    func start() {
        guard let appCoordinator = UIApplication.shared.appCoordinator else { return }
        guard let profileView = ProfileModuleModuleBuilder.generate(coordinatorProtocol: appCoordinator) else { return }
        
        profileView.tabBarItem.title = TabBarItem.profile.title
        
        navigationController = UINavigationController(rootViewController: profileView)
    }
}
