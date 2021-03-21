import UIKit

public extension UITextField {
    func loadDropdownData(data: [String]) {
        self.inputView = MyPickerView(pickerData: data, dropdownField: self)
    }

    func addTarget() {

    }
}
