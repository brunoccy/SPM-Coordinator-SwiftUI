//
//  File.swift
//
//
//  Created by bruno chen chih ying on 21/03/21.
//

import SwiftUI
import Commons

public final class FirstFeatureCoordinator: Coordinator {
    // MARK: - Variables
    public var navigationController: UINavigationController?
    public weak var coordinatorDelegate: FirstFeatureCoordinatorDelegate?
    
    // MARK: - Life Cycle
    public init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let viewModel = FirstFeatureViewModel()
        viewModel.navigationDelegate = self
        
        var view = FirstFeatureView()
        view.viewModel = viewModel
        
        let controller = UIHostingController(rootView: view)
        
        navigationController?.pushViewController(controller, animated: true)
    }
}

// MARK: - Navigation Delegate
extension FirstFeatureCoordinator: FirstFeatureNavigationDelegate {
    public func wantsToNavigateToHomeCoordinator() {
        navigationController?.popViewController(animated: true)
    }
    
    public func wantsToNavigateToSecondPage() {
        let viewModel = SecondPageViewModel()
        viewModel.navigationDelegate = self
        
        var view = SecondPageView()
        view.viewModel = viewModel
        
        let controller = UIHostingController(rootView: view)
        
        navigationController?.pushViewController(controller, animated: true)
    }
}

extension FirstFeatureCoordinator: SecondPageNavigationDelegate {
    public func wantsToNavigateToFeatureHome() {
        
    }
    
    public func wantsToNavigateToPage1() {
        navigationController?.popViewController(animated: true)
    }
}
