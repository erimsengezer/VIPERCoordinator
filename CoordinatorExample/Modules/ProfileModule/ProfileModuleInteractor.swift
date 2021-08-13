//
//  ProfileModuleInteractor.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ProfileModuleInteractorProtocol {
    var repository: ProfileModuleRepositoryProtocol { get }
    var output: ProfileModuleInteractorOutputProtocol? { get set }
}

protocol ProfileModuleInteractorOutputProtocol: class {
    
}

final class ProfileModuleInteractor: ProfileModuleInteractorProtocol {
    
    let repository: ProfileModuleRepositoryProtocol
    weak var output: ProfileModuleInteractorOutputProtocol?
    
    // MARK: Initializers
    init(repository: ProfileModuleRepositoryProtocol) {
        self.repository = repository
    }
}
