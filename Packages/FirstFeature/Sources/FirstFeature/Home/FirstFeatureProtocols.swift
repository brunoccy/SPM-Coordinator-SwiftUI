//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import Foundation
import Commons

// MARK: - Protocols
public protocol FirstFeatureViewModelType: AnyObject {
    var navigationDelegate: FirstFeatureNavigationDelegate? { get set }
    func wantsToNavigateToHomeFeature()
    func wantsToNavigateToSecondPage()
}

public protocol FirstFeatureNavigationDelegate: AnyObject {
    func wantsToNavigateToHomeCoordinator()
    func wantsToNavigateToSecondPage()
}

public protocol FirstFeatureCoordinatorDelegate: AnyObject {
    func wantsToNavigateToHomeCoordinator()
}

