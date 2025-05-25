//
//  ContentView.swift
//  Barcode-Scanner
//
//  Created by Adam E on 5/24/25.
//

import SwiftUI

struct BarcodeScannerView: View {

    var body: some View {
        NavigationView{
            VStack {
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)

                Spacer()
                    .frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(scannedCode.isEmpty ? "Not Scanned" : scannedCode)
                    .font(.largeTitle)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                    .fontWeight(.bold)
                    .padding()
    
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }

        }
        
    }
}

#Preview {
    BarcodeScannerView()
}
