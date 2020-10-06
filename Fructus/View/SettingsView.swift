//
//  SettingsView.swift
//  Fructus
//
//  Created by Juan Carlos on 02/10/20.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                            ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                           Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)
                            
                            Text("Most fruits are naturaly low in fact, sodium, and calories. None have cholesterol. Fruit and sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - Section 2
                    
                    
                    // MARK: - Section 3
                } // End of VStack
                .navigationBarTitle("Settings")
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                        })
                .padding()
            } // End of scroll
        } // End of navigation
        
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
    }
}
