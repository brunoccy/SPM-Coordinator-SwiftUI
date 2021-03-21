//
//  File.swift
//  
//
//  Created by bruno chen chih ying on 20/03/21.
//

import UIKit
import SwiftUI
import Commons

public final class HomeCoordinator: Coordinator {
    // MARK: - Variables
    public var currentViewController: UIViewController?
    public var navigationController: UINavigationController?

    // MARK: - Life Cycle
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController

        let viewModel = HomePageViewModel()

        var view = HomePageView()
        view.viewModel = viewModel

        let controller = UIHostingController(rootView: view)

        let nav = UINavigationController(rootViewController: controller)
        nav.navigationBar.isHidden = true
//        window?.rootViewController = nav
//        window?.makeKeyAndVisible()
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
