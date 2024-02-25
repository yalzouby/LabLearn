//
//  SearchView.swift
//  LabLearn
//
//  Created by Mac User on 2/25/24.
//

import SwiftUI

struct SearchView: View {
    private var listOfTests = cmpTests
    @State var searchText = ""
    var body: some View {
        NavigationView {
            List {
                ForEach(tests, id: \.self) { test in HStack {
                    Text(test.capitalized)
                    Spacer()
                    Image(systemName: "heart.text.square")
                        .foregroundStyle(.pink)
                    }
                .padding()
                    
                }
                    
            }
            .searchable(text: $searchText)
            .navigationTitle("Tests")
        }
            
        var tests: [String] {
            let lcTests = listOfTests.map { $0.lowercased() }
            return searchText == "" ? lcTests : lcTests.filter {
                $0.contains(searchText.lowercased())
            }
        }

    }
}

#Preview {
    SearchView()
}
