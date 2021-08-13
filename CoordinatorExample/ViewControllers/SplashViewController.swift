//
//  SplashViewController.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//

import UIKit

class SplashViewController: UIViewController {

    private let completionHandler: (() -> Void)?
    
    init(completionHandler: (() -> Void)?) {
        self.completionHandler = completionHandler
        super.init(nibName: "SplashViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.completionHandler?()
        }
    }
}
