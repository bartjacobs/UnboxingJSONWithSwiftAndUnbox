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

    // MARK: - Initialization

    init(unboxer: Unboxer) throws {
        self.lat = try unboxer.unbox(key: "latitude")
        self.long = try unboxer.unbox(key: "longitude")
    }

}
