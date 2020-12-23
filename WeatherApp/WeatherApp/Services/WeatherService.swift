//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Mohamed Hegab on 23.12.20.
//

import Foundation

class WeatherService {
    func getWeather(city: String, onComplete: @escaping (Weather?) -> Void) {
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=f549982907a67fcd065736c0e27f0487&units=metric") else {
            onComplete(nil)
            return
        }
        URLSession.shared.dataTask(with: url) {data, response, error in
            guard let data = data else {
                onComplete(nil)
                return
            }
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)

            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                onComplete(weather)
            } else {
                onComplete(nil)
            }

        }.resume()
    }
}
