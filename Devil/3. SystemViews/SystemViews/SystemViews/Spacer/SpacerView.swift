//
//  SpacerView.swift
//  SystemViews
//
//  Created by 박진수 on 2021/01/21.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack() { // #6
            HStack {
                Image(systemName: "suit.heart.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
                
                // #3
                Spacer()
            }
            .padding()
            .background(Color.blue)
            
            // #1
            Spacer()
                .frame(height: 50)
//            Spacer(minLength: 50)
                
            
            // 왜 VStack이 공간을 거의 다 차지할까??
            VStack {
                // #5
//                Spacer()
                
                Image(systemName: "suit.spade.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
                
                // #4
//                Spacer()
            }
            .padding()
            .background(Color.red)
            
            // #2
            Spacer()
                .frame(height: 20)
            Spacer()
        }
    }
}

struct View_Spacer_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
