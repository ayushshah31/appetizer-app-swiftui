//
//  AppetizerListModel.swift
//  Appetizer
//
//  Created by ayush on 01/01/24.
//

import SwiftUI

class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    func getAppetizer(){
        NetworkManager.shared.getAppetizer{ result in
            DispatchQueue.main.async { [self] in
                switch result {
                    case .success(let appetizer):
                        self.appetizers = appetizer
                    
                    case .failure(let error):
                        switch error {
                            
                        case .invalidURL:
                            alertItem = AlertContext.invalidURL
                        case .invalidResponse:
                            alertItem = AlertContext.invalidResponse
                        case .invalidData:
                            alertItem = AlertContext.invalidData
                        case .unableToComplete:
                            alertItem = AlertContext.unableToComplete
                        }
                }
            }
        }
    }
}
