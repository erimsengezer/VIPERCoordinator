//
//  TabBarItemType.swift
//  CoordinatorExample
//
//  Created by erimsengezer on 13.08.2021.
//

import UIKit

enum TabbarItemPositionType: Int {
    case home = 0
    case profile = 1
}

enum TabBarItem {
    private enum Constants {
        enum Title {
            static let home: String = "HOME"
            static let profile: String = "PROFILE"
        }
    }
    
    case home
    case profile
    
    var title: String {
        switch self {
        case .home:
            return Constants.Title.home
        case .profile:
            return Constants.Title.profile
        }
    }
}
