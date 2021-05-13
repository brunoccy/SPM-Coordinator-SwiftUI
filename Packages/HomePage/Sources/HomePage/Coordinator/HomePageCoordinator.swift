//
//  File.swift
//  
//
//  Created by bruno chen chih ying on 20/03/21.
//

import UIKit
import SwiftUI
import Commons

public final class HomePageCoordinator: Coordinator {
    // MARK: - Variables
    public var currentViewController: UIViewController?
    public var navigationController: UINavigationController?
    public weak var coordinatorDelegate: HomeCoordinatorDelegate?

    // MARK: - Life Cycle
    public init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    public func start() {
        let viewModel = HomePageViewModel()
        viewModel.navigationDelegate = self

        var view = HomePageView()
        view.viewModel = viewModel


        let controller = UIHostingController(rootView: view)
        navigationController?.setViewControllers([controller], animated: true)
        navigationController!.navigationBar.isHidden = true
    }

}

// MARK: - Home Page Navigation Extension
extension HomePageCoordinator: HomeNavigationDelegate {
    public func wantsToNavigateToFirstFeature() {
        coordinatorDelegate?.wantsToNavigateToFirstFeature()
    }

    public func wantsToNavigateToSecondFeature() {
        coordinatorDelegate?.wantsToNavigateToSecondFeature()
    }
}
