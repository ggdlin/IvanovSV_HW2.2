//
//  ViewController.swift
//  ivanovSV_HW2.2
//
//  Created by Admin on 17.10.2020.
//

import UIKit

class TuningViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var mixedRGBView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    var colorValue: UIColor!
    var delegate: TuningViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixedRGBView.layer.cornerRadius = 20
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        mixedRGBView.backgroundColor = colorValue
        redTextField.delegate = self
        greenTextField.delegate = self
        blueTextField.delegate = self
        
        prepareView()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func slidersAction() {

        setupLabels()
        setupTextFields()
        setupView()
        
    }

    
    @IBAction func doneButtonPressed() {
        delegate.saveColor(color: UIColor(red: CGFloat(redSlider.value),
                                          green: CGFloat(greenSlider.value),
                                          blue: CGFloat(blueSlider.value),
                                          alpha: 1))
        dismiss(animated: true)
        
    }
    
   
    
    private func prepareView() {
        
        guard let cgColorComponents = colorValue.cgColor.components else {
            return
        }
        let redComponent = Float(cgColorComponents[0])
        let greenComponent = Float(cgColorComponents[1])
        let blueComponent = Float(cgColorComponents[2])
        
        redSlider.value = redComponent
        greenSlider.value = greenComponent
        blueSlider.value = blueComponent
        
        setupLabels()
        setupTextFields()

    }

    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func setupLabels() {
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }
    private func setupTextFields() {
        redTextField.text = string(from: redSlider)
        greenTextField.text = string(from: greenSlider)
        blueTextField.text = string(from: blueSlider)
    }
    private func setupView() {
        mixedRGBView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: 1)
    }
}

extension TuningViewController {
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        redSlider.value = Float(redTextField.text!) ?? 0
        greenSlider.value = Float(greenTextField.text!) ?? 0
        blueSlider.value = Float(blueTextField.text!) ?? 0
        
        setupLabels()
        setupView()
        
    }
}
