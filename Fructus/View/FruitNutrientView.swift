//
//  FruitNutrientView.swift
//  Fructus
//
//  Created by Juan Carlos on 03/09/20.
//

import SwiftUI

struct FruitNutrientView: View {
    // MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energía", "Azucar", "Grasa", "Proteinas", "Vitaminas", "Minerales"]
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Valor nutricional por cada 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: Box
    }
}

// MARK: - Preview
struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
