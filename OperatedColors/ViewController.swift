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
        
        valueRedLabel.text = ""
        valueRedLabel.font = valueRedLabel.font.withSize(22)
        valueGreenLabel.text = ""
        valueGreenLabel.font = valueGreenLabel.font.withSize(22)
        valueBlueLabel.text = ""
        valueBlueLabel.font = valueBlueLabel.font.withSize(22)
        
        screenColorsView.layer.cornerRadius = 10
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
        redSlider.thumbTintColor = .red
        greenSlider.thumbTintColor = .green
        blueSlider.thumbTintColor = .blue
        
        redSlider.value = 0.1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.value = 0.2
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.value = 0.3
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        valueRedLabel.text = String(redSlider.value)
        valueGreenLabel.text = String(greenSlider.value)
        valueBlueLabel.text = String(blueSlider.value)
    }
    @IBAction func sliderActionForRed() {
        valueRedLabel.text = String((round(redSlider.value * 100) / 100 ))
        screenColorsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func sliderActionForGreen() {
        valueGreenLabel.text = String((round(greenSlider.value * 100) / 100 ))
        screenColorsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func sliderActionForBlue() {
        valueBlueLabel.text = String((round(blueSlider.value * 100) / 100 ))
        screenColorsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

