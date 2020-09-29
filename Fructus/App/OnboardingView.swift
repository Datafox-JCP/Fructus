//
//  OnboardingView.swift
//  Fructus
//
//  Created by Juan Carlos on 01/08/20.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...4])
            { item in
                FruitCardView(fruit: item)
            }
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
