//
//  WeatherVC.swift
//  WeatherAppKilo
//
//  Created by Grzegorz Wiczkowski on 08/02/2022.
//

import UIKit

class WeatherVC: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var temperatureFeel: UILabel!
    
    
    var weatherReport: WeatherReport?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let weatherReport = weatherReport else { return }

        cityLabel.text = weatherReport.city
        temperatureLabel.text = weatherReport.degressFahrenheit
        descriptionLabel.text = weatherReport.conditions.first?.description
        temperatureFeel.text = weatherReport.degreesFeelLike
        
        weatherImageView.image = weatherReport.conditionImage
    }
    
}
