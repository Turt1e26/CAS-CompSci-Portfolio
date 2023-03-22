//
//  MapView.swift
//  Earthquake
//
//  Created by Bodie Woods on 1/18/23.
//

import Foundation
import MapKit
import SwiftUI

struct MapView: View {
var earthquake:Earthquake
    @State private var region = MKCoordinateRegion()
    
    private func setRegion (_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    }
    
    var body: some View {
        VStack{
            Map(coordinateRegion: $region)
                .onAppear{
                    let long = earthquake.geometry.coordinates[0]
                    let lat = earthquake.geometry.coordinates[1]
                    let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
                    setRegion(coordinate)
                }
            Text(earthquake.properties.title)
            Text(earthquake.properties.place)
            
            if let mag = earthquake.properties.mag{
                Text("\(mag) magnitude")
            }
        }
    }
}
