//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import SwiftUI
import Combine
import Commons

public final class SecondPageViewModel: SecondPageViewModelType {
    // MARK: - Variables
    weak public var navigationDelegate: SecondPageNavigationDelegate?

    // MARK: - Life Cycle
    public init() {}

    // MARK: - Methods
    public func wantsToNavigateToPage1() {
        navigationDelegate!.wantsToNavigateToPage1()
    }
}
