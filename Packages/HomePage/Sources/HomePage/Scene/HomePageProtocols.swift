//
//  File.swift
//  
//
//  Created by bruno chen chih ying on 20/03/21.
//

import Foundation
import Commons

// MARK: - Protocols
public protocol HomePageViewModelType {
    var navigationDelegate: HomeNavigationDelegate? { get set }
    func wantsToNavigateToFirstFeature()
    func wantsToNavigateToSecondFeature()
}

public protocol HomeNavigationDelegate {
    func wantsToNavigateToFirstFeature()
    func wantsToNavigateToSecondFeature()
}

public protocol HomeCoordinatorDelegate {
    func wantsToNavigateToFirstFeature()
    func wantsToNavigateToSecondFeature()
}

