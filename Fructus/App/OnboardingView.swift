//
//  OnboardingView.swift
//  Fructus
//
//  Created by Gurleen Kaur on 2023-05-03.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - Properties
    
    var fruits: [Fruit] = fruitData
    
    //MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(fruits[0..<10]){ item in
                FruitCardView(fruit: item)

            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}


//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
