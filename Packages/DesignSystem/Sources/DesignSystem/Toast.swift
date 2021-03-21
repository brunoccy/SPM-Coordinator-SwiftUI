import UIKit

public class Toast {

    public static func show(message: String, parentView: UIView) {
        let toastLabel = UILabel(frame: .zero)
        toastLabel.numberOfLines = 0
        toastLabel.backgroundColor = .lightGray
        toastLabel.text = message
        parentView.addSubview(toastLabel)
        toastLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            toastLabel.centerXAnchor.constraint(equalTo: parentView.centerXAnchor),
            toastLabel.leftAnchor.constraint(greaterThanOrEqualTo: parentView.leftAnchor, constant: 16),
            toastLabel.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: -40),
            toastLabel.rightAnchor.constraint(lessThanOrEqualTo: parentView.rightAnchor, constant: -16),
            toastLabel.heightAnchor.constraint(equalToConstant: 48)
        ])

        UIView.animate(withDuration: 5.0, delay: 2.0, options: .curveEaseIn, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.alpha = 0
            toastLabel.removeFromSuperview()
        })
    }
}
