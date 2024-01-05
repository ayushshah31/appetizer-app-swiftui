//
//  OrderView.swift
//  Appetizer
//
//  Created by ayush on 30/12/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView{
            Text("Order View")
                .navigationTitle("🛒 Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
