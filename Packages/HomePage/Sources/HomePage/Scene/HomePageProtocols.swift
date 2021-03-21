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
    func wantsToNavigateToResult()
}

public protocol HomeNavigationDelegate {
    func wantsToNavigateToResult()
}

