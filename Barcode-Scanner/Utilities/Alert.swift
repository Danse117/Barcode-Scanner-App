//
//  Alert.swift
//  Barcode-Scanner
//
//  Created by Adam E on 5/24/25.
//

import Foundation
import SwiftUI

// When conforming to identifable must have an id
struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message : String
    let dismissButton: Alert.Button
}
struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Error", message: "Invalid Device input", dismissButton: .default(Text("OK")))
    static let invalidScannedType = AlertItem(title: "Error", message: "Invalid Scanned Code", dismissButton: .default(Text("OK")))
}
