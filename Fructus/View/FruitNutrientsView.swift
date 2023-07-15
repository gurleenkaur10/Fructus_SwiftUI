//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Gurleen Kaur on 2023-07-15.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Protien", "Vitamins", "Minerals"]

    //MARK: - Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional Value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
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
            
           
        }
        
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .padding()
        
            
    }
}
