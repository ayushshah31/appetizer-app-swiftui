//
//  Appetizer.swift
//  Appetizer
//
//  Created by ayush on 01/01/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let protein: Int
    let calories: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(
        id: 0001,
        name: "Test Appetizer of Pizza",
        description: "This is the description for the delicious jain pizza appetizer. It's Yummy",
        price: 75,
        imageURL: "",
        protein: 99,
        calories: 99,
        carbs: 99)
    
    static let appetizer = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
