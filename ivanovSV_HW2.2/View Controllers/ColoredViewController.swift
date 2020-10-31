//
//  ColoredViewController.swift
//  ivanovSV_HW2.2
//
//  Created by Admin on 31.10.2020.
//

import UIKit

class ColoredViewController: UIViewController {

    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        let tuningVC = segue.destination as! TuningViewController
        tuningVC.backgroundColor = view.backgroundColor
    }
    

}
