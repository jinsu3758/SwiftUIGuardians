//
//  TextView.swift
//  TextAndFont
//
//  Created by jinsu on 2021/02/26.
//

import SwiftUI

let longText = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

struct TextView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .foregroundColor(.blue)
                .background(Color.yellow)
            
            Text(longText)
                .frame(width: 200)
                .lineLimit(8)
                .truncationMode(.head)
                .multilineTextAlignment(.trailing)
                .lineSpacing(6)
            
            Text("Lorem ipsum dolor sit amet, consectetur123")
                .font(.largeTitle)
                .frame(width: 300)
                .lineLimit(1)
                .allowsTightening(true) // 자간을 줄여서 최대한 크기에 맞게 해줌
                .minimumScaleFactor(0.5)
            
        }
        
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
