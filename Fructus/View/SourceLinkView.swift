//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Gurleen Kaur on 2023-07-15.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Scource")
                Spacer()
                Link("Wikipedia" ,destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
