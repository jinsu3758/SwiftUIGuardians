//
//  FontWeightView.swift
//  TextAndFont
//
//  Created by jinsu on 2021/02/26.
//

import SwiftUI

struct FontWeightView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("50pt Font")
                .font(.system(size: 50))
            
            Text("Black")
                .fontWeight(.black)
            
            Text("Heavy")
                .fontWeight(.heavy)
            
            Text("Bold")
                .fontWeight(.bold)
            
            Text("Semibold")
                .fontWeight(.semibold)
            
            Text("Medium")
                .fontWeight(.medium)
            
            Text("Regular")
                .fontWeight(.regular)
            
            Text("Light")
                .fontWeight(.light)
            
            Text("Thin")
                .fontWeight(.thin)
            
            Text("Ultra Light")
                .font(.system(size: 50, weight: .ultraLight, design: .default))
        }
    }
}

struct FontWeightView_Previews: PreviewProvider {
    static var previews: some View {
        FontWeightView()
    }
}
