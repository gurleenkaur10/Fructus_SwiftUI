//
//  ContentView.swift
//  Fructus
//
//  Created by Gurleen Kaur on 2023-04-29.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    @State private var isshowingSettings: Bool = false
    
    var fruit: [Fruit] = fruitData
    //MARK: - Body
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
            Button(action: {
                isshowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isshowingSettings){
                    SettingView()
                }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
    }
}
