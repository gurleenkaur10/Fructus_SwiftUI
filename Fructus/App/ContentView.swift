//
//  ContentView.swift
//  Fructus
//
//  Created by Gurleen Kaur on 2023-04-29.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    var fruit: [Fruit] = fruitData
    //MARK: - Body
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
    }
}
