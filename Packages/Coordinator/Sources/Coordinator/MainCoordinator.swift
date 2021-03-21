import SwiftUI
import Commons
import HomePage

public class MainCoordinator: Coordinator {
    // MARK: - Variables
    public var currentViewController: UIViewController?
    public var childCoordinators = [Coordinator]()
    public var navigationController: UINavigationController?
    public var window: UIWindow?

    // MARK: Coordinators
//    private var homeCoordinator: CurrencyConverterCoordinator?

    // MARK: - Constants
    required public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Methods
    public func start() {
        wantsToNavigateToHomePage()
    }

    func wantsToNavigateToHomePage() {
        let viewModel = HomePageViewModel()

        var view = HomePageView()
        view.viewModel = viewModel
//        environmentObject(viewModel)
        let controller = UIHostingController(rootView: view)
        let nav = UINavigationController(rootViewController: controller)
        nav.navigationBar.isHidden = true
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

//        guard let navigation = navigationController else { return }
//        homeCoordinator = CurrencyConverterCoordinator(navigationController: navigation)
//
//        guard let child = homeCoordinator else { return }
//        childCoordinators.append(child)
    }

}
