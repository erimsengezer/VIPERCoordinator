//
//  HomeViewInteractor.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol HomeViewInteractorProtocol {
    var repository: HomeViewRepositoryProtocol { get }
    var output: HomeViewInteractorOutputProtocol? { get set }
}

protocol HomeViewInteractorOutputProtocol: class {
    
}

final class HomeViewInteractor: HomeViewInteractorProtocol {
    
    let repository: HomeViewRepositoryProtocol
    weak var output: HomeViewInteractorOutputProtocol?
    
    // MARK: Initializers
    init(repository: HomeViewRepositoryProtocol) {
        self.repository = repository
    }
}
