//
//  VStack_View.swift
//  Stack
//
//  Created by 박진수 on 2021/01/13.
//

import SwiftUI

struct VStack_View: View {
    var body: some View {
        HStack {
            VStack(alignment: .trailing, spacing: 20) {
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
            .frame(maxHeight: .infinity)
            
            Spacer()
        }
    }
}

struct VStack_View_Previews: PreviewProvider {
    static var previews: some View {
        VStack_View()
    }
}
