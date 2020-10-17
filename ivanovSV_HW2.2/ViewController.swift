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
        setupValueLabels()
        mixColors()
    }

    @IBAction func redSliderAction() {
        mixColors()
        setupValueLabels()
    }
    @IBAction func greenSliderAction() {
        mixColors()
        setupValueLabels()
    }
    @IBAction func blueSliderAction() {
        mixColors()
        setupValueLabels()
    }
    
    private func mixColors() {
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        mixedRGBView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }
    private func setupSliders() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    private func setupValueLabels() {
        let redColorValue = String(redSlider.value)
        let greenColorValue = String(greenSlider.value)
        let blueColorValue = String(blueSlider.value)
        
        redLabel.text = String(redColorValue.prefix(4))
        greenLabel.text = String(greenColorValue.prefix(4))
        blueLabel.text = String(blueColorValue.prefix(4))
        
    }
    
}

