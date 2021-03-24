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
    public var currentViewController: UIViewController?
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
    
    public func wantsToNavigateToSecondFeature() {

    }

}

//// MARK: - Home Navigation Extension
//extension HomeCoordinator: HomeNavigationDelegate {
//    public func wantsToNavigateToResult(CountryFrom: String, value: Double, allExchanges: Exchange) {
//        let viewModel = ResultViewModel(countryFrom: CountryFrom, value: value, allExchanges: allExchanges)
//        viewModel.navigationDelegate = self
//
//        let view = ResultViewController.instantiate(storyboardName: "ResultViewController")
//        view.viewModel = viewModel
//        navigationController?.pushViewController(view, animated: false)
//
//        currentViewController = view
//    }
//}
//
//// MARK: - Result Navigation Extension
//extension CurrencyConverterCoordinator: ResultNavigationDelegate {
//    public func wantsToNavigateToHome() {
//        navigationController?.popViewController(animated: true)
//    }
//}
