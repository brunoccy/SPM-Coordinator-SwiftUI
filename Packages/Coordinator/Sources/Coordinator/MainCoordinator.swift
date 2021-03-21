import SwiftUI
import Commons
import HomePage

public class MainCoordinator: Coordinator {
    // MARK: - Variables
    public var currentViewController: UIViewController?
    public var childCoordinators = [Coordinator]()
    public var navigationController: UINavigationController?

    // MARK: Coordinators
    private var homeCoordinator: HomeCoordinator?

    // MARK: - Constants
    public required init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
        start()
    }

    // MARK: - Methods
    public func start() {
        wantsToNavigateToHomePage()
    }

    func wantsToNavigateToHomePage() {
        homeCoordinator = HomeCoordinator(navigationController: navigationController)
    }

}
