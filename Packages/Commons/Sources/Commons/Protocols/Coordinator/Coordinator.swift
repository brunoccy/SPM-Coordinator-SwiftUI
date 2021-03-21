import UIKit

public protocol Coordinator {
    var currentViewController: UIViewController? { get set }
    var navigationController: UINavigationController? { get set }
    init(navigationController: UINavigationController?)
}
