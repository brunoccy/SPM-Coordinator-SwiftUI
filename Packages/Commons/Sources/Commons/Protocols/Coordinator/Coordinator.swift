import UIKit

public protocol Coordinator: class {
    var currentViewController: UIViewController? { get set }
    var navigationController: UINavigationController? { get set }
    init(navigationController: UINavigationController?)
}
