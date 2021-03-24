import SwiftUI
import Commons
import HomePage
import FirstFeature

public class MainCoordinator: Coordinator {
    // MARK: - Variables
    public var currentViewController: UIViewController?
    public var childCoordinators = [Coordinator]()
    public var navigationController: UINavigationController?

    // MARK: Coordinators
    private var homeCoordinator: HomePageCoordinator?
    private var firstFeatureCoordinator: FirstFeatureCoordinator?


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
        homeCoordinator = HomePageCoordinator(navigationController: navigationController)
        homeCoordinator?.coordinatorDelegate = self
        homeCoordinator?.start()

        removeAllDependency()
        addDependency(homeCoordinator!)
    }

    func addDependency(_ coordinator: Coordinator) {
        for element in childCoordinators {
            if element === coordinator { return }
        }
        childCoordinators.append(coordinator)
    }

    func removeDependency(_ coordinator: Coordinator?) {
        guard childCoordinators.isEmpty == false, let coordinator = coordinator else { return }

        for (index, element) in childCoordinators.enumerated() {
            if element === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }

    func removeAllDependency() {
        childCoordinators.removeAll()
    }

}

extension MainCoordinator: HomeCoordinatorDelegate {
    public func wantsToNavigateToFirstFeature() {
        firstFeatureCoordinator = FirstFeatureCoordinator(navigationController: navigationController)
        firstFeatureCoordinator?.coordinatorDelegate = self
        firstFeatureCoordinator?.start()

//        removeDependency(homeCoordinator)
    }

    public func wantsToNavigateToSecondFeature() {

    }
}

extension MainCoordinator: FirstFeatureCoordinatorDelegate {}
