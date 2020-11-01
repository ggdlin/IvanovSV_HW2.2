//
//  ColoredViewController.swift
//  ivanovSV_HW2.2
//
//  Created by Admin on 31.10.2020.
//

import UIKit


protocol TuningViewControllerDelegate {
    func saveColor(color: UIColor)
}

class ColoredViewController: UIViewController, TuningViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.6, green: 1, blue: 0.5, alpha: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue,
                          sender: Any?) {
        let tuningVC = segue.destination as! TuningViewController
        tuningVC.colorValue = view.backgroundColor
        tuningVC.delegate = self
    }
    

}

extension ColoredViewController {
    func saveColor(color: UIColor) {
        view.backgroundColor = color
    }
}
