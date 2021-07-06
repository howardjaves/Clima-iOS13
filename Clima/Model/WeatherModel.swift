//
//  WeatherModel.swift
//  Clima
//
//  Created by Howard Javes on 04/07/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double

    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
            case 200...232:
                return "cloud.bolt"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701:
                return "cloud.fog"
            case 711:
                return "smoke"
            case 721:
                return "sun.haze"
            case 731:
                return "sun.dust"
            case 741:
                return "cloud.fog"
            case 751, 761, 762:
                return "sun.dust"
            case 771:
                return "wind"
            case 781:
                return "tornado"
            case 800:
                return "sun.max"
            case 801, 802, 803:
                return "cloud.sun"
            case 804:
                return "cloud"
            default:
                return "questionmark.circle"
        }
    }
}
