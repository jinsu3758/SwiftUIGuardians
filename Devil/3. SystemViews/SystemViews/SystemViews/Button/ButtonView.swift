//
//  ButtonView.swift
//  SystemViews
//
//  Created by 박진수 on 2021/01/26.
//

import SwiftUI

struct ButtonView: View {
    @State private var value = Int.random(in: 1...100)
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Random Number")
                .font(.largeTitle)
            
            Text("\(value)")
                .font(.system(size: 200))
            
            Spacer()
            
            // #1
            Button(action: {
                self.value = Int.random(in: 1...100)
            }, label: {
                
                HStack {
                    Image(systemName: "repeat")
                    
                    Text("Generate")
                }
                .frame(width: 200, height: 60)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(30)
//                    .padding()
            })
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonView()
        }
    }
}
