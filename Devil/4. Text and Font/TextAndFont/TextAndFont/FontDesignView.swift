//
//  FontDesignView.swift
//  TextAndFont
//
//  Created by jinsu on 2021/02/26.
//

import SwiftUI

struct FontDesignView: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Default")
                .font(.largeTitle)
            
            // 고정 폭
            Text("Monospaced")
                .font(.system(.largeTitle, design: .monospaced))
            
            Text("Rounded")
                .font(.system(.largeTitle, design: .rounded))
            
            Text("Serif")
                .font(.system(.largeTitle, design: .serif))
            
        }
    }
}

struct FontDesignView_Previews: PreviewProvider {
    static var previews: some View {
        FontDesignView()
    }
}
