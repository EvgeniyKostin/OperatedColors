//
//  ViewController.swift
//  OperatedColors
//
//  Created by Evgeniy Kostin on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screenColorsView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var valueRedLabel: UILabel!
    @IBOutlet weak var valueGreenLabel: UILabel!
    @IBOutlet weak var valueBlueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Superview setup
        screenColorsView.layer.cornerRadius = 10
        
        // MARK: Sliders setup
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
        redSlider.thumbTintColor = .red
        greenSlider.thumbTintColor = .green
        blueSlider.thumbTintColor = .blue
        
        // MARK: Labels setup
        valueRedLabel.text = String(redSlider.value)
        valueGreenLabel.text = String(greenSlider.value)
        valueBlueLabel.text = String(blueSlider.value)
        
        // MARK: Setup methods
        colorValueSettings()
        colorSettings()
    }
    
    //MARK: IB Actions
    @IBAction func sliderActionForRed() {
        colorSettings()
        colorValueSettings()
    }
    @IBAction func sliderActionForGreen() {
        colorSettings()
        colorValueSettings()
    }
    @IBAction func sliderActionForBlue() {
        colorSettings()
        colorValueSettings()
    }
    
    // MARK: Private methods
    private func colorSettings() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        screenColorsView.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
    }
    
    private func colorValueSettings() {
        valueRedLabel.text = String(format: "%.2f", redSlider.value)
        valueGreenLabel.text = String(format: "%.2f", greenSlider.value)
        valueBlueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

