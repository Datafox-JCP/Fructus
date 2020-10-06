//
//  ContentView.swift
//  Fructus
//
//  Created by Juan Carlos on 27/07/20.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false

    var fruits: [Fruit] = fruitsData

    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fructus")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isShowingSettings = true
                                    }) {
                                        Image(systemName: "slider.horizontal.3")
                                    }
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        } //: Navigation
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11")
    }
}
