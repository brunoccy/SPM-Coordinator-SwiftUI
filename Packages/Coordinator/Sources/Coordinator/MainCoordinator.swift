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
    private var homeCoordinator: HomeCoordinator?

    // MARK: - Constants
    public required init(navigationController: UINavigationController?, window: UIWindow?) {
        self.navigationController = navigationController
        self.window = window
    }

    // MARK: - Methods
    public func start() {
        wantsToNavigateToHomePage()
    }

    func wantsToNavigateToHomePage() {
        homeCoordinator = HomeCoordinator(navigationController: navigationController, window: window)
    }

}
