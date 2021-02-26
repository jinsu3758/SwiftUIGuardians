//
//  FontStyleView.swift
//  TextAndFont
//
//  Created by jinsu on 2021/02/26.
//

import SwiftUI

struct FontStyleView: View {
    @State var isUnderLine: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Group {
                Text("No Style")
                    .font(.system(size: 40))
                
                Text("Bold")
                    .font(.system(size: 40))
                    .bold()
                
                Text("Italic")
                    .font(.system(size: 40))
                    .italic()
            }
            
            Text("Underline")
                .font(.system(size: 40))
                .underline(isUnderLine, color: .blue)
            
            Text("Strikethrough")
                .font(.system(size: 40))
                .strikethrough()
            
            Text("123")
                .font(.system(size: 40))
            
            Text("Monospaced 123")
                .font(Font.system(size: 40).monospacedDigit())
            
            HStack {
                Text("Small ")
                    .font(Font.system(size: 40))
                
                Text("Capitals")
                    .font(Font.system(size: 40).smallCaps())
            }
            
            Text("Lower Small Caps")
                .font(Font.system(size: 40).lowercaseSmallCaps())
            
            Text("Upper Small Caps")
                .font(Font.system(size: 40).uppercaseSmallCaps())
            
            Button("underLine", action: {
                isUnderLine.toggle()
            })
        }
        
    }
}

struct FontStyleView_Previews: PreviewProvider {
    static var previews: some View {
        FontStyleView()
    }
}
