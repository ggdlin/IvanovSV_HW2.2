//
//  ViewController.swift
//  ivanovSV_HW2.2
//
//  Created by Admin on 17.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mixedRGBView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixedRGBView.layer.cornerRadius = 20
        setupSliders()
        mixColors()
    }

    @IBAction func redSliderAction() {
        mixColors()
        redLabel.text = String(round(redSlider.value * 100) / 100)
    }
    @IBAction func greenSliderAction() {
        mixColors()
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
    }
    @IBAction func blueSliderAction() {
        mixColors()
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
    }
   
    
    private func mixColors() {
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        mixedRGBView.backgroundColor = UIColor(
            red: redColor,
            green: greenColor,
            blue: blueColor,
            alpha: 1
        )
    }
    private func setupSliders() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
}

