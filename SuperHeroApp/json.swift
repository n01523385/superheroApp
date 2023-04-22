//
//  json.swift
//  SuperHeroApp
//
//  Created by Arunima Das on 2023-04-20.
//

import Foundation
class json{
    
    static var shared = json()
    func fromJsonDataToSuperHeroName(jsonData : Data)->[Name]{
        var namesArray = [Name]()
        let decoder = JSONDecoder()
        do {
            
            let names: [String] = try decoder.decode([String].self, from: jsonData)
            
            for name in names {
                namesArray.append(Name(hName: name))
            }
        }
        catch{
            print(error)
        }
        return namesArray
        
    }
    
    func jsontodataObject(jsonData : Data)-> HeroObject{
        var heroDetails = HeroObject()
        do{
            let jsonSer = try JSONSerialization.jsonObject(with: jsonData) as! NSDictionary
            
            var namesArray =  jsonSer["weather"] as! NSArray
            var obj =   namesArray[0] as! NSDictionary
            var mainWeather = obj["main"] as! String
            var weatherIcon = obj["icon"] as! String
            
            var temp = (jsonSer["main"] as! NSDictionary)["temp"] as! Double
            var humidity = (jsonSer["main"] as! NSDictionary)["humidity"] as! Int
          
            var mI = MainInfo()
            mI.humidity = humidity
            mI.temp = temp
            
            weatherDetails.main = mI
            weatherDetails.weather = [WeatherInfo]()
            
            var weatherInfo = WeatherInfo()
            weatherInfo.main = mainWeather
            weatherInfo.icon = weatherIcon
            weatherDetails.weather.append(weatherInfo)
            
            
            print(jsonSer)
        }catch {
            print(error)
        }
//
//        let decoder = JSONDecoder()
//        do {
//             weatherDetails = try decoder.decode(WeatherObject.self, from: jsonData)
//        }catch{
//            print(error)
//        }
        return weatherDetails
    }
