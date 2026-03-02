//
//  AddMaintenanceView.swift
//  MRT
//
//  Created by Carl on 3/1/26.
//

import SwiftUI
import PhotosUI

struct AddMaintenanceView: View {
    @State private var date: Date = Date()
    @State private var maintenanceItem: String = ""
    @State private var notes: String = ""
    @State private var mileage: String = ""
    @State private var selectedPhoto: PhotosPickerItem? = nil
    @State private var selectedImage: Image? = nil
    
    
    var body: some View {
        VStack(spacing: 20){
            Text("Add a maintenance log").font(.title).fontWeight(.bold).multilineTextAlignment(.center)
            
            Spacer()
            
            // Date Picker
            DatePicker("Date", selection: $date, displayedComponents: .date)
                .datePickerStyle(.compact)
                .padding(.horizontal)
            
            
            // Maintenance Item
            TextField("Maintenance Item (e.g. Oil Change)", text: $maintenanceItem)
                .textFieldStyle(.roundedBorder)
            
            // Notes
            VStack(alignment: .leading, spacing: 4) {
                Text("Notes")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                TextEditor(text: $notes)
                    .frame(height: 100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    )
            }
            
            // Mileage
            TextField("Mileage", text: $mileage)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            
            // Photo Picker
            PhotosPicker(selection: $selectedPhoto, matching: .images, photoLibrary: .shared()) {
                Label("Upload / Take Photo", systemImage: "camera.fill")
            }
            .buttonStyle(.bordered)
            .onChange(of: selectedPhoto) { newItem in
                Task {
                    if let data = try? await newItem?.loadTransferable(type: Data.self),
                       let uiImage = UIImage(data: data) {
                        selectedImage = Image(uiImage: uiImage)
                    }
                }
            }
            
            Spacer()
            
            Button("Save Log") {
                // save action here
            }
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity)
            
        }.padding()
    }
}

#Preview {
    AddMaintenanceView()
}
