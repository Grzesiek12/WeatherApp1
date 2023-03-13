//
//  ViewController.swift
//  WeatherAppKilo
//
//  Created by Grzegorz Wiczkowski on 08/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityTextField: UITextField!
    @IBAction func didTapGo() {
        
        var components = URLComponents(string: "http://api.openweathermap.org/data/2.5/weather")
        
        let cityQuery = URLQueryItem(name: "q", value: cityTextField.text)
        let appIdQuery = URLQueryItem(name: "appid", value: "7c464974bd024da15940fe7b0f2c973c")
        let unitesQuery = URLQueryItem(name: "units", value: "metric")
//        let languageQuery = URLQueryItem(name: "language", value: "pl")
        
        components?.queryItems = [cityQuery, appIdQuery, unitesQuery ]
        guard let url = components?.url else {return}
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error)
            } else if let data = data {
                 do {
                    let weatherReport = try JSONDecoder().decode(WeatherReport.self, from: data)
                   
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "segue.Main.enterCitytoWeather", sender: weatherReport)
                    }
                    
                } catch {
                    print(error)
                }
            }
        }
        
        dataTask.resume()
    }

    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        //!!!
        if let weatherVC = segue.destination as? WeatherVC,
            let weatherReport = sender as? WeatherReport {
            weatherVC.weatherReport = weatherReport
        }
    }
}

