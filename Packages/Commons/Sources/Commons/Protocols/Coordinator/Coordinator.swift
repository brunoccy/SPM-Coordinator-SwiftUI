import SwiftUI

public protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    init(navigationController: UINavigationController?)
}
