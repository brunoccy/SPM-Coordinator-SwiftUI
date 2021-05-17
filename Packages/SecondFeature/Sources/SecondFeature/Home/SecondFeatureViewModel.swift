//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import SwiftUI
import Combine
import Commons

public final class SecondFeatureViewModel: SecondFeatureViewModelType {
    // MARK: - Variables
    public var navigationDelegate: SecondFeatureNavigationDelegate?

    // MARK: - Life Cycle
    public init() {}

    // MARK: - Methods
    public func wantsToNavigateToHomeFeature() {
        navigationDelegate!.wantsToNavigateToHomeCoordinator()
    }
}
