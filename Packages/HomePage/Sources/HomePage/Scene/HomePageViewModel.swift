//
//  File.swift
//  
//
//  Created by bruno chen chih ying on 20/03/21.
//

import Foundation
import Commons

public final class HomePageViewModel: HomePageViewModelType {
    // MARK: - Variables
    public var navigationDelegate: HomeNavigationDelegate?

    // MARK: - Life Cycle
    public init() {}
    
    // MARK: - Methods
    public func wantsToNavigateToFirstFeature() {
        navigationDelegate?.wantsToNavigateToFirstFeature()
    }

    public func wantsToNavigateToSecondFeature() {
        navigationDelegate?.wantsToNavigateToSecondFeature()
    }

}
