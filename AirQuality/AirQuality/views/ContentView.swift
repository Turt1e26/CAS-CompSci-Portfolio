//
//  ContentView.swift
//  AirQuality
//
//  Created by Bodie Woods on 1/20/23.
//

import SwiftUI



struct ContentView: View {
    @State private var city = "Los Angeles"
    let cities = ["Los Angeles", "New York City", "Miami", "Chicago", "Dallas"]
    @State private var polutant = "Nitrogen Monoxide"
    let polutants = ["Nitrogen Monoxide", "Nitrogen Dioxide", "Ozone", "Carbon Monoxide", "Particulates"]
    @State private var lon = -118.2437
    @State private var lat = 34.0522
    @State private var pol = "no"
    @State private var tcolor = "white"
  
    @State var qualityData:[List]?
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 50) {
                
                
                
                
                Text("Air Quality Finder")
                    .font(.system(size:46))
                HStack(spacing: 130.0){
                    
                    
                        
                }
                HStack{
                    VStack{
                        Image(systemName: "building.2.fill")
                        Text("City")
                        Picker("Select a City", selection: $city) {
                            ForEach(cities, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                    }
                    
                    VStack{
                        Image(systemName: "cloud.fill")
                        Text("Polutant")
                        Picker("Select a Pollutant", selection: $polutant) {
                            ForEach(polutants, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                        
                    }
                }
    
                //padding()
                Button("Show Data"){
                    if (city == "Los Angeles"){
                        lat = 34.0522
                        lon = -118.2437
                    } else if (city == "New York City"){
                        lat = 40.7128
                        lon = -74.0060
                    } else if (city == "Miami"){
                        lat = 25.7617
                        lon = -80.1918
                    } else if (city == "Chicago"){
                        lat = 41.8781
                        lon = -87.6298
                    } else if (city == "Dallas"){
                        lat = 32.7767
                        lon = -96.7970
                    }
                   
                    loadQuality(lat: lat, lon: lon, completion: {(qualityData) in
                        self.qualityData = qualityData
                        
                        
                    })
                    
                    
                    if (polutant == "Nitrogen Monoxide"){
                        pol = "no"
                    } else if (polutant == "Nitrogen Dioxide"){
                        pol = "no2"
                    } else if (polutant == "Ozone"){
                        pol = "o3"
                    } else if (polutant == "Particulates"){
                        pol = "pm10"
                    } else if (polutant == "Carbon Monoxide"){
                        pol = "co"
                    }
                    
                }.buttonStyle(.borderedProminent)
                if let qualityData = qualityData {
                    VStack{
                        let data = qualityData[0].components[pol]!
                        
                        if (data != 0){
                            let risk = RiskLevel(pol: pol, data: data)
                            Text("Amount of \(polutant): \(data)")
                            Text("Pollutant concentration in μg/m3")
                            
                            if risk == "Very Low"{
                                Text("Risk Level: \(risk)")
                                    .foregroundColor(.green)
                            } else if risk == "Low"{
                                Text("Risk Level: \(risk)")
                                    .foregroundColor(.mint)
                            } else if risk == "Medium"{
                                Text("Risk Level: \(risk)")
                                    .foregroundColor(.yellow)
                            }else if risk == "High"{
                                Text("Risk Level: \(risk)")
                                    .foregroundColor(.orange)
                            }else if risk == "Very High"{
                                Text("Risk Level: \(risk)")
                                    .foregroundColor(.red)
                            }
                            
                        } else{
                            Text("Data for specified polutant not available")
                        }
                    }
                }
                else{
                    Text("Click ^ to show data")
                    
                }
                
//
               
                
                
            }
            .offset(y:-100)
            .padding(1.0)
        }
       
        
        
    }
    

    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
