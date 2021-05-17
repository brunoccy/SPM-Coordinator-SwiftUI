//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import Foundation
import Commons

// MARK: - Protocols
public protocol SecondFeatureViewModelType: AnyObject {
    var navigationDelegate: SecondFeatureNavigationDelegate? { get set }
    func wantsToNavigateToHomeFeature()
}

public protocol SecondFeatureNavigationDelegate: AnyObject {
    func wantsToNavigateToHomeCoordinator()
}

public protocol SecondFeatureCoordinatorDelegate: AnyObject {
    func wantsToNavigateToHomeCoordinator()
}

