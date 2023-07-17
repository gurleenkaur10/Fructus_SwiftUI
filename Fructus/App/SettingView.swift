//
//  SettingView.swift
//  Fructus
//
//  Created by Gurleen Kaur on 2023-07-16.
//

import SwiftUI

struct SettingView: View {
    
    //MARK: - Properties
    @Environment(\.presentationMode) var presenationMode
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(spacing: 20) {
                    //Mark: - Section 1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")){
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are a source of many nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    //Mark: - Section 2
                    //Mark: - Section 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"))
                    {
                        
                        SettingRowView(name: "Developer", content: "Gurleen")
                        SettingRowView(name: "Designer", content: "Gurleen")
                        SettingRowView(name: "Compatibility", content: "iOS 14")
                        SettingRowView(name: "Website", linkLabel: "SwuitUI Masterclass", linkDestination:"swiftuimasterclass.com")
                        SettingRowView(name: "Twitter", linkLabel: "@GurleenKaur", linkDestination:"twitter.com")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                        
                    }
                }//: Vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                Button(action: {
                    presenationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//: scroll
        }//: Navigation
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
