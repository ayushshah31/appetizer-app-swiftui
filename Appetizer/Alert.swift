//
//  Alert.swift
//  Appetizer
//
//  Created by ayush on 01/01/24.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There was an error connecting to the server. Is the error persists, please contact the support."),
                                      dismissButton: .default(Text("OK")))
    
    static let invalidData = AlertItem(title: Text("Server Error"),
                                      message: Text("The data received from the server was invalid. Please contact the support."),
                                      dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                      message: Text("Invalid response from the server. PLease try again later or contact the support."),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                      message: Text("Unable to complete your request at this moment. Please check your internet connection or contact the server."),
                                      dismissButton: .default(Text("OK")))
}
