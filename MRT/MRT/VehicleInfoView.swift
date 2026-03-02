//
//  VehicleInfoView.swift
//  MRT
//
//  Created by Carl on 3/1/26.
//

import SwiftUI

struct VehicleInfoView: View {
    @State private var make: String = ""
    @State private var model: String = ""
    @State private var year: String = ""
    @State private var displacement: String = ""
    
    var body: some View {
        VStack(spacing: 20){
            Text("Vehicle Information").font(.title).fontWeight(.bold).multilineTextAlignment(.center)
            
            Spacer()
            
            TextField("Vehicle Make", text: $make)
                .textFieldStyle(.roundedBorder)
            
            TextField("Vehicle Model", text: $model)
                .textFieldStyle(.roundedBorder)
            
            TextField("Vehicle Year", text: $year)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            TextField("Vehicle Displacement", text: $displacement)
                .textFieldStyle(.roundedBorder)
            
            Button("Save") {
                // save action here
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            Button(action: {
                // export action here
            }) {
                Label("Export Maintenance Log", systemImage: "square.and.arrow.up")
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

#Preview {
    VehicleInfoView()
}
