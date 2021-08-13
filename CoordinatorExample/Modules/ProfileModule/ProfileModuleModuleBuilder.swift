//
//  ProfileModuleModuleBuilder.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum ProfileModuleModuleBuilder {
    static func generate(coordinatorProtocol: ProfileCoordinatorProtocol) -> UIViewController? {
        let wireframe: ProfileModuleWireframeProtocol = ProfileModuleWireframe()
        let service: ProfileModuleServiceProtocol = ProfileModuleService()
        let repository: ProfileModuleRepositoryProtocol = ProfileModuleRepository(service: service)
        var interactor: ProfileModuleInteractorProtocol = ProfileModuleInteractor(repository: repository)
        let presenter: ProfileModulePresenterProtocol & ProfileModuleInteractorOutputProtocol = ProfileModulePresenter(interactor: interactor, wireframe: wireframe)
        let view: ProfileModuleViewProtocol = ProfileModuleViewController(presenter: presenter)
        
        presenter.view = view
        interactor.output = presenter
        
        return view as? UIViewController
    }
}
