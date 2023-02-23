//
//  TabView.swift
//  AirQuality
//
//  Created by Bodie Woods on 2/13/23.
//

import SwiftUI

struct Tab: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Label("Quality", systemImage: "smoke")
                }
            moreInfo()
                .tabItem{
                    Label("More Info", systemImage: "questionmark.bubble")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
