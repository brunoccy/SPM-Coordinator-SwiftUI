//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import Foundation
import Commons

public final class FirstFeatureViewModel: FirstFeatureViewModelType {
    // MARK: - Variables
    public var navigationDelegate: FirstFeatureNavigationDelegate?
    public var coordinatorDelegate: FirstFeatureCoordinatorDelegate?

    // MARK: - Life Cycle
    public init() {}

    // MARK: - Methods
    public func wantsToNavigateToHomePage() {
        coordinatorDelegate?.wantsToNavigateToHomeCoordinator()
    }

    public func wantsToNavigateToSecondFeature() {
        navigationDelegate?.wantsToNavigateToSecondFeature()
    }
}
