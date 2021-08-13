//
//  HomeViewRepository.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol HomeViewRepositoryProtocol {
    var service: HomeViewServiceProtocol { get }
}

final class HomeViewRepository: HomeViewRepositoryProtocol {
    
    let service: HomeViewServiceProtocol
    
    // MARK: Initializers
    init(service: HomeViewServiceProtocol) {
        self.service = service
    }
    
}
