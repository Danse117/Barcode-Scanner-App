//
//  ContentView.swift
//  Barcode-Scanner
//
//  Created by Adam E on 5/24/25.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        VStack {
            Text("Barcode Scanner")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            
            Image(systemName: "square")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(90)
            
            HStack{
                Image(systemName: "barcode.viewfinder")
                    .resizable()
                    .frame(width: 32, height: 32)
                Text("Scanned Barcode: ")
                    .font(.title)
            }
            Text("Not Scanned")
                .font(.title)
                .foregroundStyle(Color(.red))
                .fontWeight(.bold)
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    BarcodeScannerView()
}
