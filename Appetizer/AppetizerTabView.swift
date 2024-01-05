//
//  ContentView.swift
//  Appetizer
//
//  Created by ayush on 30/12/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Order")
                }
                .tabViewStyle(.page)
        }
        .tint(Color("brandPrimary"))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
