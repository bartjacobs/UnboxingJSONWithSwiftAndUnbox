//
//  ViewController.swift
//  Weather
//
//  Created by Bart Jacobs on 31/07/2017.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Fetch Weather Data
        fetchWeatherData()
    }

    // MARK: - Helper Methods

    private func fetchWeatherData() {
        // Helpers
        let sharedSession = URLSession.shared

        let latitude = 51.525598
        let longitude = -0.118750
        let apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

        if let url = URL(string: "https://api.forecast.io/forecast/\(apiKey)/\(latitude),\(longitude)") {
            // Create Data Task
            let dataTask = sharedSession.dataTask(with: url, completionHandler: { (data, response, error) in
                if let requestError = error {
                    print("Unable to Fetch Weather Data")
                    print("\(requestError), \(requestError.localizedDescription)")

                } else if let weatherData = data {
                    self.processWeatherData(weatherData)
                }
            })

            dataTask.resume()
        }
    }

    private func processWeatherData(_ data: Data) {
        if let dataAsString = String(data: data, encoding: String.Encoding.utf8) {
            print(dataAsString)
        }
    }

}
