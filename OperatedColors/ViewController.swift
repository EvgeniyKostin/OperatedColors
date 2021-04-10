//
//  ViewController.swift
//  OperatedColors
//
//  Created by Evgeniy Kostin on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screenColorsView: UIView!
    
    @IBOutlet weak var valueRedLabel: UILabel!
    @IBOutlet weak var valueGreenLabel: UILabel!
    @IBOutlet weak var valueBlueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Скругляем края screenColorsView
        screenColorsView.layer.cornerRadius = 10
        
        // Устанавливаем цвет для полоски слайдера
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
        // Устанавливаем цвет для кнопки слайдера
        redSlider.thumbTintColor = .red
        greenSlider.thumbTintColor = .green
        blueSlider.thumbTintColor = .blue
        
        // Устанавливаем методы для слайдеров и screenColorsView
        colorValueSettings() // Округляет значение слайдера до сотых
        colorSettings() // Задает цвет для screenColorsView в зависимости от положения слайдера
    }
    
    // Приминяем методы colorValueSettings() и colorSettings() к слайдерам при взаимодействии пользователя
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
    
    // Задает цвет для screenColorsView в зависимости от положения слайдера
    private func colorSettings() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        screenColorsView.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
    }
    
    // Округляет значение слайдера до сотых
    private func colorValueSettings() {
        valueRedLabel.text = String(format: "%.2f", redSlider.value)
        valueGreenLabel.text = String(format: "%.2f", greenSlider.value)
        valueBlueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

