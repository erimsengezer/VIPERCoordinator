//
//  ProfileModulePresenter.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ProfileModulePresenterProtocol: class {
    var view: ProfileModuleViewProtocol? { get set }
    var interactor: ProfileModuleInteractorProtocol { get }
    var wireframe: ProfileModuleWireframeProtocol { get }
    
    func viewDidLoad()
}
    
final class ProfileModulePresenter: ProfileModulePresenterProtocol {

    // MARK: Properties
    weak var view: ProfileModuleViewProtocol?
    let interactor: ProfileModuleInteractorProtocol
    let wireframe: ProfileModuleWireframeProtocol

    // MARK: Initializer
    init(interactor: ProfileModuleInteractorProtocol,
         wireframe: ProfileModuleWireframeProtocol) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
    
    // MARK: Life Cycle
    func viewDidLoad() {
        
    }
}

extension ProfileModulePresenter: ProfileModuleInteractorOutputProtocol {
    
}
