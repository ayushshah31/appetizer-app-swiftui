//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by ayush on 30/12/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.appetizers) { appetizer in
               AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍕 Appetizers")
        }
        .onAppear{
            viewModel.getAppetizer()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
