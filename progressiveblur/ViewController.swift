//
//  ViewController.swift
//  progressiveblur
//
//  Created by Ethan Chaffin on 1/8/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var blurStyle: UISegmentedControl!

    @IBOutlet var colorSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func present(_ sender: Any) {
        let detail: UIViewController! = storyboard!.instantiateViewController(withIdentifier: "Detail")
        let transitionDelegate = _UIProgressiveBlurContextController()
        transitionDelegate.blurStyle = blurStyle.selectedSegmentIndex
        switch colorSegment.selectedSegmentIndex {
        case 0:
            break
        case 1:
            detail.view.backgroundColor = .clear
        default:
            break
        }
        detail.modalPresentationStyle = .custom
        detail.transitioningDelegate = transitionDelegate
        present(detail, animated: true, completion: nil)
    }

}

