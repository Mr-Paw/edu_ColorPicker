//
//  CPUIKitViewController.swift
//  ColorPicker
//
//  Created by paw on 20.04.2021.
//

import UIKit

class CPUIKitViewController: UIViewController {
    let buttonColorPicker = UIColorPickerViewController()
    let bcgColorPicker = UIColorPickerViewController()

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonColorPicker.delegate = self
        bcgColorPicker.delegate = self
    }
    
    @IBAction func pickBCGColor(_ sender: Any) {
        present(bcgColorPicker, animated: true)
    }
    
    @IBAction func pickButtonColor(_ sender: Any) {
        present(buttonColorPicker, animated: true)
    }

}

extension CPUIKitViewController: UIColorPickerViewControllerDelegate{
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        switch viewController {
        case buttonColorPicker:
            button.setTitleColor(viewController.selectedColor, for: .normal)
        case bcgColorPicker:
            view.backgroundColor = viewController.selectedColor
        default:
            break
        }
    }
}
