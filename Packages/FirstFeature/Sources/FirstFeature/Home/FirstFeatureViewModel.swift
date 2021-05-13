//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import SwiftUI
import Combine
import Commons

public final class FirstFeatureViewModel: FirstFeatureViewModelType {
    // MARK: - Variables
    public var navigationDelegate: FirstFeatureNavigationDelegate?

    // MARK: - Life Cycle
    public init() {}

    // MARK: - Methods
    public func wantsToNavigateToHomeFeature() {
        navigationDelegate!.wantsToNavigateToHomeCoordinator()
    }

    public func wantsToNavigateToSecondPage() {
        navigationDelegate?.wantsToNavigateToSecondPage()
    }
}
