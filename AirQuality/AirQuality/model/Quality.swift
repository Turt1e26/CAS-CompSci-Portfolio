//
//  Quality.swift
//  AirQuality
//
//  Created by Bodie Woods on 1/20/23.
//

import Foundation

//let sampleQuality: Codable = Quality(components: ["co" : 2], dt: 1)

// MARK: - Welcome
struct Quality: Codable {

    let list: [List]
}

//// MARK: - Coord


// MARK: - List
struct List: Codable {
    let components: [String: Double]
    let dt: Int
}

// MARK: - Main
//struct Main: Codable {
//    let aqi: Int
//}
