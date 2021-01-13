//
//  ZStack_View.swift
//  Stack
//
//  Created by 박진수 on 2021/01/13.
//

import SwiftUI

struct ZStack_View: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "suit.heart.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.red)
            Image(systemName: "suit.club.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.black)
            
            Image(systemName: "suit.spade.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.black)
            
            Image(systemName: "suit.diamond.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
                .offset(x: 100, y: 100)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ZStack_View_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_View()
    }
}
