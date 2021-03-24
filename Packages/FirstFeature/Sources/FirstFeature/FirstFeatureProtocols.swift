//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import Foundation
import Commons

// MARK: - Protocols
public protocol FirstFeatureViewModelType: class {
    var navigationDelegate: FirstFeatureNavigationDelegate? { get set }
    func wantsToNavigateToHomePage()
    func wantsToNavigateToSecondFeature()
}

public protocol FirstFeatureNavigationDelegate: class {
    func wantsToNavigateToHomeCoordinator()
    func wantsToNavigateToSecondFeature()
}

public protocol FirstFeatureCoordinatorDelegate: class {
    func wantsToNavigateToHomeCoordinator()
}

