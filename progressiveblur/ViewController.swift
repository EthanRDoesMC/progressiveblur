//
//  ViewController.swift
//  progressiveblur
//
//  Created by Ethan Chaffin on 1/8/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var blurPickerView: UIPickerView!
    @IBOutlet var appearancePicker: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        blurPickerView.selectRow(UIBlurEffect.Style.allCases.firstIndex(of: .systemMaterial)!, inComponent: 0, animated: false)
        // Do any additional setup after loading the view.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return UIBlurEffect.Style.allCases.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return UIBlurEffect.Style.allCases[row].description
    }

    @IBAction func present(_ sender: Any) {
        let detail: DetailViewController! = storyboard!.instantiateViewController(withIdentifier: "Detail") as? DetailViewController
        detail.view.backgroundColor = .clear
        detail.overrideUserInterfaceStyle = UIUserInterfaceStyle.init(rawValue: appearancePicker.selectedSegmentIndex)!
        detail.modalPresentationStyle = .custom
        let transitionDelegate = _UIProgressiveBlurContextController()
        transitionDelegate.blurStyle = UIBlurEffect.Style.allCases[blurPickerView.selectedRow(inComponent: 0)]
        detail.transitioningDelegate = transitionDelegate
        present(detail, animated: true, completion: nil)
    }

}
