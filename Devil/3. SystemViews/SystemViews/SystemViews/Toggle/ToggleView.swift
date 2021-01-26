//
//  ToggleView.swift
//  SystemViews
//
//  Created by 박진수 on 2021/01/26.
//

import SwiftUI

struct ToggleView: View {
    @State private var isOn = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .resizable()
                .foregroundColor(isOn ? .yellow : .gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            // #1
            //            Toggle("Toggle Switch", isOn: $isOn)
            VStack {
                Text("Toggle Switch")
                
                Toggle(isOn: $isOn, label: {
                    
                    Text("Toggle Switch")
    //                EmptyView()
    //                HStack {
    //                    Image(systemName: "bolt.circle.fill")
    //                    Text("Toggle Switch")
    //                }
                })
    //            Toggle("", isOn: $isOn)
                .labelsHidden()
                .padding()
            }
            .padding()
            
            Toggle(isOn: $isOn) {
                Text("ewrw")
            }
            .toggleStyle(DefaultToggleStyle())
                
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
