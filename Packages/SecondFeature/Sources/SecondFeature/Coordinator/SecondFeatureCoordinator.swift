//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import SwiftUI
import Commons

public final class SecondFeatureCoordinator: Coordinator {
    // MARK: - Variables
    public var navigationController: UINavigationController?
    public weak var coordinatorDelegate: SecondFeatureCoordinatorDelegate?
    
    // MARK: - Life Cycle
    public init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let viewModel = SecondFeatureViewModel()
        viewModel.navigationDelegate = self
        
        var view = SecondFeatureView()
        view.viewModel = viewModel
        
        let controller = UIHostingController(rootView: view)
        
        navigationController?.pushViewController(controller, animated: true)
    }
}

// MARK: - Navigation Delegate
extension SecondFeatureCoordinator: SecondFeatureNavigationDelegate {
    public func wantsToNavigateToHomeCoordinator() {
        navigationController?.popViewController(animated: true)
    }
}
