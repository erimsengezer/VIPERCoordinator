//
//  ProfileModuleRepository.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ProfileModuleRepositoryProtocol {
    var service: ProfileModuleServiceProtocol { get }
}

final class ProfileModuleRepository: ProfileModuleRepositoryProtocol {
    
    let service: ProfileModuleServiceProtocol
    
    // MARK: Initializers
    init(service: ProfileModuleServiceProtocol) {
        self.service = service
    }
    
}
