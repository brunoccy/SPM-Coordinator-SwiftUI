import SwiftUI

public protocol Coordinator: class {
//    associatedtype T: View
//
//    var currentViewController: UIHostingController<T> { get set }
    var currentViewController: UIViewController? { get set }
    var navigationController: UINavigationController? { get set }
    init(navigationController: UINavigationController?)
}
