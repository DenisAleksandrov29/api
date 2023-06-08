import Foundation

struct NetworkWeatherManager {
    func featchCurrentWeather(forCity city: String) {
        let urlSrtring = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)"
        guard let url = URL(string: urlSrtring) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
            }
            
        }
        task.resume()
    }
}
