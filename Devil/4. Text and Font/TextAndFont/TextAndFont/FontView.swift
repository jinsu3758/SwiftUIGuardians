//
//  FontView.swift
//  TextAndFont
//
//  Created by jinsu on 2021/02/26.
//

import SwiftUI

struct FontView: View {
    var body: some View {
        VStack(spacing: 20) {
           Text("Large Title")
            .font(.largeTitle)
           
           Text("Title")
            .font(.title)
           
           Text("Headline")
            .font(.headline)
           
           Text("Subheadline")
            .font(.subheadline)
           
           Text("body")
            .font(.body)
           
           Text("callout")
            .font(.callout)
           
           Text("caption")
            .font(.caption)
           
           Text("footnote")
            .font(.footnote)
        }
    }
}

struct FontView_Previews: PreviewProvider {
    static var previews: some View {
        FontView()
    }
}
