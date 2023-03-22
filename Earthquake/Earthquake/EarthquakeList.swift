//
//  EarthquakeList.swift
//  Earthquake
//
//  Created by Bodie Woods on 1/18/23.
//

import Foundation
import SwiftUI

struct EarthquakeList: View {
    @State var earthquakeData:Earthquakes?
    var body: some View{
        if let earthquakeData = earthquakeData {
            NavigationView{
                List(earthquakeData.features, id: \.id) { earthquake in
                    NavigationLink{
                        Text("Details and map view will go here soon")
                        
                    } label: {
                        Text(earthquake.properties.title)
                    }
                    
                }
                .navigationTitle("recent earthquakes")
            }
        }
        else{
            Text("loading...").onAppear(perform: {
                loadEarthquakes { (earthquakes) in self.earthquakeData = earthquakes
                    
                }
            })
        }
    }
}

