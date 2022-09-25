//
//  ContentView.swift
//  WeatherKit_CoreLocation_SwiftUI_Tutorial
//
//  Created by Cole Dennis on 9/24/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var weatherKitManager = WeatherKitManager()
    
    var body: some View {
        Label(weatherKitManager.temp, systemImage: weatherKitManager.symbol)
            .task {
                await weatherKitManager.getWeather()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
