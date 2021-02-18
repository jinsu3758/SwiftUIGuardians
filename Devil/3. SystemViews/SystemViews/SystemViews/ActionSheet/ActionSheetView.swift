//
//  ActionSheetView.swift
//  SystemViews
//
//  Created by jinsu on 2021/02/18.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var color = Color.black
    @State private var showActionSheet = false
    
    var body: some View {
       VStack {
          Image(systemName: "paintbrush.fill")
             .resizable()
             .foregroundColor(color)
             .frame(width: 230, height: 230)
          
          Button(action: {
             showActionSheet = true
          }, label: {
             Text("Show ActionSheet")
          })
          .padding()
          .actionSheet(isPresented: $showActionSheet, content: {
            ActionSheet(title: Text("show color"), message: nil, buttons: [
                .default(Text("Red"), action: {
                    color = .red
                }),
                .default(Text("Green"), action: {
                    color = .green
                }),
                .default(Text("Blue"), action: {
                    color = .blue
                }),
                .cancel(),
                .destructive(Text("Reset"), action: {
                    color = .black
                }),
                .default(Text("Yellow"), action: {
                    color = .yellow
                })
            ])
          })
          
          
       }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
