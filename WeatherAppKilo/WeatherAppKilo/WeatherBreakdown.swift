//
//  WeatherBreakdown.swift
//  WeatherAppKilo
//
//  Created by Grzegorz Wiczkowski on 10/02/2022.
//

import Foundation

struct WeatherBreakdown: Decodable {
    let temperature: Double
    let temperatureFeel: Double
    
    private enum CodingKeys: String, CodingKey {
        case temperature = "temp"
        case temperatureFeel = "feels_like"
    }
}
