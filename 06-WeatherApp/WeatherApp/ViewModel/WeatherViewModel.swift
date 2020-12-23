
import Foundation
import Combine

class WeatherViewModel: ObservableObject {

    private var weatherService: WeatherService
    var temp: String {
        if let temp = weather.temp {
           return String(format: "%.0f", temp)
        } else {
           return ""
        }
    }

    var humidity: String {
        if let humidity = weather.humidity {
           return String(format: "%.0f", humidity)
        } else {
           return ""
        }
    }

    var cityName: String = ""
    @Published var weather = Weather()

    init() {
        self.weatherService = WeatherService()
    }

    func search() {
        if let city = cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchWeather(city: city)
        }
    }
    
    private func fetchWeather(city: String) {
        weatherService.getWeather(city: city) { (weather) in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
            }
        }
    }
}

