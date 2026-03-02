//
//  ContentView.swift
//  MRT
//
//  Created by Carl on 3/1/26.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            LogView()
                .tabItem {
                    Label("Log", systemImage: "list.bullet.rectangle.fill")
                }
            
            VehicleInfoView()
                .tabItem {
                    Label("Vehicle Info", systemImage: "car.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
