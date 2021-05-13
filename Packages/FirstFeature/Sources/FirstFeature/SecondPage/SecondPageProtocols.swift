//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import Foundation
import Commons

// MARK: - Protocols
public protocol SecondPageViewModelType: AnyObject {
    var navigationDelegate: SecondPageNavigationDelegate? { get set }
    func wantsToNavigateToPage1()
}

public protocol SecondPageNavigationDelegate: AnyObject {
    func wantsToNavigateToPage1()
}
