//
//  ProfileModuleViewController.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ProfileModuleViewProtocol: class {
    var presenter: ProfileModulePresenterProtocol { get }
}

final class ProfileModuleViewController: UIViewController {

    // MARK: IBOutlets
    
    // MARK: Public properties
    let presenter: ProfileModulePresenterProtocol
    
    // MARK: Initializers
    init(presenter: ProfileModulePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: .main)
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        setNavigationBar()
    }
    
    private func setNavigationBar() {
        self.navigationItem.title = "Profile Page"
    }

}

extension ProfileModuleViewController: ProfileModuleViewProtocol {
    
}
