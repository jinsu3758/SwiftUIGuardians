//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박진수 on 2020/11/05.
//

import SwiftUI

struct ContentView: View {
    var a = 0
    
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .font(.largeTitle)  // Modifier이라고 부름
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
                .background(Color.yellow)
                .padding()
            
            Text("Have a nice day")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
