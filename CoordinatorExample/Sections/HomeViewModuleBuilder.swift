//
//  HomeViewModuleBuilder.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class HomeViewModuleBuilder {
    static func generate() -> UIViewController? {
        let wireframe: HomeViewWireframeProtocol = HomeViewWireframe()
        let service: HomeViewServiceProtocol = HomeViewService()
        let repository: HomeViewRepositoryProtocol = HomeViewRepository(service: service)
        var interactor: HomeViewInteractorProtocol = HomeViewInteractor(repository: repository)
        let presenter: HomeViewPresenterProtocol & HomeViewInteractorOutputProtocol = HomeViewPresenter(interactor: interactor, wireframe: wireframe)
        let view: HomeViewViewProtocol = HomeViewViewController(presenter: presenter)
        
        presenter.view = view
        interactor.output = presenter
        
        return view as? UIViewController
    }
}
