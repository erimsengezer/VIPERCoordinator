//
//  Coordinator.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//

import UIKit

protocol  Coordinator: class {
    var navigationController: UINavigationController { get }
    
    func start()
}
