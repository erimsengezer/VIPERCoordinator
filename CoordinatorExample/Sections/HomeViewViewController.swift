//
//  HomeViewViewController.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol HomeViewViewProtocol: class {
    var presenter: HomeViewPresenterProtocol { get }
}

final class HomeViewViewController: UIViewController {

    // MARK: IBOutlets
    
    // MARK: Public properties
    let presenter: HomeViewPresenterProtocol
    
    // MARK: Initializers
    init(presenter: HomeViewPresenterProtocol) {
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
    }

}

extension HomeViewViewController: HomeViewViewProtocol {
    
}
