//
//  ContentView.swift
//  Stack
//
//  Created by 박진수 on 2021/01/13.
//

import SwiftUI

struct HStack_View: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            Image(systemName: "suit.heart.fill")
               .resizable()
               .frame(width: 50, height: 50)
               .foregroundColor(.red)
            Image(systemName: "suit.club.fill")
               .resizable()
               .frame(width: 100, height: 100)
               .foregroundColor(.black)

            Image(systemName: "suit.spade.fill")
               .resizable()
               .frame(width: 50, height: 50)
               .foregroundColor(.black)

            Image(systemName: "suit.diamond.fill")
               .resizable()
               .frame(width: 50, height: 50)
               .foregroundColor(.red)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .frame(width: 300, height: 300)
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HStack_View()
    }
}
