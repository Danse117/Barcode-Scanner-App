//
//  BarcodeViewModel.swift
//  Barcode-Scanner
//
//  Created by Adam E on 5/24/25.
//

import Foundation


final class BarBarcodeViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
}
