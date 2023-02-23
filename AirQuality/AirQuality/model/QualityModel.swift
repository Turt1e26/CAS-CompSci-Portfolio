//
//  QualityModel.swift
//  AirQuality
//
//  Created by Bodie Woods on 1/20/23.
//

import Foundation

//func loadData(lat:Double, lon:Double){
//    let apiURL = URL(string: "https://api.openweathermap.org/data/2.5/air_pollution?lat=\(lat)&lon=\(lon)&appid=daa7165bdd05bc785af108e1c762ce3a")!
//    let request = URLRequest(url: apiURL)
//    let task = URLSession.shared.dataTask(with: request) {data, response, error in do{
//        if let data = data {
//            let dataString = String(data: data, encoding: .utf8)!
//            print("----------")
//            print(dataString)
//
//            let quality = try JSONDecoder().decode(Quality.self, from: data)
//            print(quality)
//        }
//    } catch{
//        print(error)
//    }
//
//
//    }
//    task.resume()
//}
//
//func loadQuality(lat:Double, lon:Double, completion:@escaping (Quality) -> Void){
//    let apiURL = URL(string: "https://api.openweathermap.org/data/2.5/air_pollution?lat=\(lat)&lon=\(lon)&appid=daa7165bdd05bc785af108e1c762ce3a")!
//    let request = URLRequest(url: apiURL)
//    let task = URLSession.shared.dataTask(with: request) {data, response, error in do{
//        if let data = data {
//            let dataString = String(data: data, encoding: .utf8)!
//            print("----------")
//            print(dataString)
//
//            let qualities = try JSONDecoder().decode(Quality.self, from: data)
//            print(qualities)
//
//            completion(qualities)
//        }
//    } catch{
//        print(error)
//    }
//
//
//    }
//    task.resume()
//}

import Foundation





func loadData(lat:Double, lon:Double){
    let websearch = "https://api.openweathermap.org/data/2.5/air_pollution?lat=\(lat)&lon=\(lon)&appid=daa7165bdd05bc785af108e1c762ce3a"
    
    let apiURL = URL(string: websearch)!
    let request = URLRequest(url: apiURL)
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        do{
            if let data = data {

                let dataString = String(data:data, encoding: .utf8)!
                print("-------")
                print(dataString)

                let quality = try JSONDecoder().decode(Quality.self, from: data)
                print(quality)
            }
        } catch{
            print(error)
        }
    }
    task.resume()
}



func loadQuality(lat:Double, lon:Double, completion: @escaping ([List]) -> Void){
    let websearch = "https://api.openweathermap.org/data/2.5/air_pollution?lat=\(lat)&lon=\(lon)&appid=daa7165bdd05bc785af108e1c762ce3a"
    
    let apiURL = URL(string: websearch)!
    let request = URLRequest(url: apiURL)

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        do{
            if let data = data {

                let dataString = String(data:data, encoding: .utf8)!
                print("-------")
                print(dataString)

                let quality = try JSONDecoder().decode(Quality.self, from: data)
                print(quality)

                completion(quality.list)
            }
        } catch{
            print(error)
        }
    }
    task.resume()
}



