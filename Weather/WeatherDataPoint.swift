//
//  WeatherDataPoint.swift
//  Weather
//
//  Created by Bart Jacobs on 31/07/2017.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import Unbox

struct WeatherDataPoint: Unboxable {

    let time: Int
    let windSpeed: Double
    let fahrenheit: Double

    init(unboxer: Unboxer) throws {
        self.time = try unboxer.unbox(key: "time")
        self.windSpeed = try unboxer.unbox(key: "windSpeed")
        self.fahrenheit = try unboxer.unbox(key: "temperature")
    }

}
