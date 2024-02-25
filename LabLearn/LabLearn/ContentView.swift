//
//  ContentView.swift
//  LabLearn
//
//  Created by Mac User on 2/24/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image("LabLearnLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:100, height: 100)
        }

        TabView {
            AboutView()
                .tabItem() {
                    Image(systemName: "house")
                    Text("Home")
                }
            SearchView()
                .tabItem() {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
    
}

#Preview {
    ContentView()
}
