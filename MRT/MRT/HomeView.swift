//
//  HomeView.swift
//  MRT
//
//  Created by Carl on 3/1/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Welcome to MRT maintenance-record-tool").font(.title).fontWeight(.bold).multilineTextAlignment(.center)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("New Maintenance Log")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
            }
            
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
