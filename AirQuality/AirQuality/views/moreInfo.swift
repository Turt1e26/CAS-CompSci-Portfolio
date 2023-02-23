//
//  moreInfo.swift
//  AirQuality
//
//  Created by Bodie Woods on 1/24/23.
//

import SwiftUI

struct moreInfo: View {
    var body: some View {
        VStack(alignment: .center){
            Text("This app will show you different levels of polutants in a given city. Here is some more info about the Polutants:")
            Text("Carbon Monoxide:")
                .font(.title)
            Text("When carbon monoxide is emitted into the atmosphere, it affects the number of greenhouse gasses linked to climate change and global warming. This means that land and sea temperature increases, changing ecosystems, increasing storm activity, and causing other extreme weather events.")
                .font(.system(size:16))
            Text("Nitrogen Monoxide:")
                .font(.title)
            Text("Breathing high concentrations of NO can make respiratory diseases such as asthma much more severe and even lead to respiratory infections. People with asthma, children, and the elderly are at a greater risk of the health effects caused by NO.")
                .font(.system(size:16))
            Text("Nitrogen Dioxide:")
                .font(.title)
            Text("High levels of nitrogen dioxide are also harmful to vegetation—damaging foliage, decreasing growth, or reducing crop yields. Nitrogen dioxide can fade and discolor furnishings and fabrics, reduce visibility, and react with surfaces.")
                .font(.system(size:16))
            Text("Particulates:")
                .font(.title)
            Text("Particulate matter pollution contributes to acid rain and climate change. In addition to the worsening of acid rain, particulate pollution can also change weather patterns, cause drought, contribute to global warming, and cause the ocean to acidify.")
                .font(.system(size:16))
            
            
            
        }
        .padding(.horizontal)
    }
}

struct moreInfo_Previews: PreviewProvider {
    static var previews: some View {
        moreInfo()
    }
}
