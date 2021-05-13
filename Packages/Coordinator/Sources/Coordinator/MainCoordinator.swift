import SwiftUI
import Commons
import HomePage
import FirstFeature
import SecondFeature

public class MainCoordinator: Coordinator {
    // MARK: - Variables
    public var childCoordinators = [Coordinator]()
    public var navigationController: UINavigationController?

    // MARK: - Constants
    public required init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
        start()
    }

    // MARK: - Methods
    public func start() {
        wantsToNavigateToHomeCoordinator()
    }

    public func wantsToNavigateToHomeCoordinator() {
        let homeCoordinator = HomePageCoordinator(navigationController: navigationController)
        homeCoordinator.coordinatorDelegate = self
        homeCoordinator.start()
    }
    
}

// MARK: - HomeCoordinatorDelegate Extensions
extension MainCoordinator: HomeCoordinatorDelegate {
    public func wantsToNavigateToFirstFeature() {
        let firstFeatureCoordinator = FirstFeatureCoordinator(navigationController: navigationController)
        firstFeatureCoordinator.coordinatorDelegate = self
        firstFeatureCoordinator.start()

    }

    public func wantsToNavigateToSecondFeature() {
        let secondFeatureCoordinator = SecondFeatureCoordinator(navigationController: navigationController)
        secondFeatureCoordinator.coordinatorDelegate = self
        secondFeatureCoordinator.start()
    }
}

// MARK: - FirstFeatureCoordinatorDelegate Extensions
extension MainCoordinator: FirstFeatureCoordinatorDelegate {}

extension MainCoordinator: SecondFeatureCoordinatorDelegate {}
