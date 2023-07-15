//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Gurleen Kaur on 2023-07-15.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - Properties
    var fruit: Fruit
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20){
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        //subheading
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                   
                    }//: vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: scroll
            .edgesIgnoringSafeArea(.top)
        }//: Navigation
    }
}
//MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[1])
    }
}
