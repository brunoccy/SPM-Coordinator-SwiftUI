import Foundation
import UIKit

public class MyPickerView : UIPickerView, UIPickerViewDataSource, UIPickerViewDelegate {
    // MARK: - Variables
    var pickerData : [String]!
    var pickerTextField : UITextField!

    // MARK: - Cicle Life
    public init(pickerData: [String], dropdownField: UITextField) {
        super.init(frame: .zero)

        self.pickerData = pickerData
        self.pickerTextField = dropdownField

        self.delegate = self
        self.dataSource = self

        DispatchQueue.main.async {
            if pickerData.count > 0 {
                self.pickerTextField.text = self.pickerData[0]
                self.pickerTextField.isEnabled = true
            } else {
                self.pickerTextField.text = nil
                self.pickerTextField.isEnabled = false
            }
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Methods
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }

    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTextField.text = pickerData[row]
        pickerTextField.delegate?.textFieldDidChangeSelection?(self.pickerTextField)
    }
}
