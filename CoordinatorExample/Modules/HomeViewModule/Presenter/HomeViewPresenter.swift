//
//  HomeViewPresenter.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol HomeViewPresenterProtocol: class {
    var view: HomeViewViewProtocol? { get set }
    var interactor: HomeViewInteractorProtocol { get }
    var wireframe: HomeViewWireframeProtocol { get }
    
    func viewDidLoad()
}
    
final class HomeViewPresenter: HomeViewPresenterProtocol {

    // MARK: Properties
    weak var view: HomeViewViewProtocol?
    let interactor: HomeViewInteractorProtocol
    let wireframe: HomeViewWireframeProtocol

    // MARK: Initializer
    init(interactor: HomeViewInteractorProtocol,
         wireframe: HomeViewWireframeProtocol) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
    
    // MARK: Life Cycle
    func viewDidLoad() {
        view?.setNavBar()
    }
}

extension HomeViewPresenter: HomeViewInteractorOutputProtocol {
    
}
