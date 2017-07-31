//
//  WeatherData.swift
//  Weather
//
//  Created by Bart Jacobs on 31/07/2017.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import Unbox

struct WeatherData: Unboxable {

    // MARK: - Properties

    let lat: Double
    let long: Double
    let windSpeed: Double
    let fahrenheit: Double
    let hourlyDataPoints: [WeatherDataPoint]

    // MARK: - Initialization

    init(unboxer: Unboxer) throws {
        self.lat = try unboxer.unbox(key: "latitude")
        self.long = try unboxer.unbox(key: "longitude")
        self.windSpeed = try unboxer.unbox(keyPath: "currently.windSpeed")
        self.fahrenheit = try unboxer.unbox(keyPath: "currently.temperature")
        self.hourlyDataPoints = try unboxer.unbox(keyPath: "hourly.data")
    }

}
