//
//  SliderView.swift
//  SystemViews
//
//  Created by 박진수 on 2021/02/01.
//

import SwiftUI

struct SliderView: View {
    @State private var r = 0.0
    @State private var g = 0.0
    @State private var b = 0.0
    
    var color: Color {
        Color(red: r / 255, green: g / 255, blue: b / 255)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "smiley.fill")
                .resizable()
                .foregroundColor(color)
                .frame(width: 250, height: 250)
            
//            Slider(value: $r, in: 0...255, step: 1,
//                   onEditingChanged: { print($0) },
//                   minimumValueLabel: Text("R"),
//                   maximumValueLabel: Text("\(Int(r))"),
//                   label: { EmptyView() })
//                .padding()
//                .foregroundColor(.red)
//
//            Slider(value: $g, in: 0...255, step: 1,
//                   onEditingChanged: { print($0) },
//                   minimumValueLabel: Text("G"),
//                   maximumValueLabel: Text("\(Int(g))"),
//                   label: { EmptyView() })
//                .padding()
//                .foregroundColor(.green)
//
//            Slider(value: $b, in: 0...255, step: 1,
//                   onEditingChanged: { print($0) },
//                   minimumValueLabel: Text("B"),
//                   maximumValueLabel: Text("\(Int(b))"),
//                   label: { EmptyView() })
//                .padding()
//                .foregroundColor(.blue)
            
            HStack {
                Text("R")
                    .frame(minWidth: 40)
                
                Slider(value: $r, in: 0...255, step: 1,
                       onEditingChanged: { print($0) },
                       label: { EmptyView() })
            
                HStack {
                    
                    Text("\(Int(r))")
                    Spacer()
                }
                .frame(width: 40)
                
            }
            .padding()
            .foregroundColor(.red)
            
            HStack {
                Text("G")
                    .frame(minWidth: 40)
                
                Slider(value: $g, in: 0...255, step: 1,
                       onEditingChanged: { print($0) },
                       label: { EmptyView() })
            
                HStack {
                    Spacer()
                    Text("\(Int(g))")
                }
                .frame(width: 40)
                
            }
            .padding()
            .foregroundColor(.green)
            
            HStack {
                Text("B")
                    .frame(minWidth: 40)
                
                Slider(value: $b, in: 0...255, step: 1,
                       onEditingChanged: { print($0) },
                       label: { EmptyView() })
            
                HStack {
                    Spacer()
                    Text("\(Int(b))")
                }
                .frame(width: 40)
                
            }
            .padding()
            .foregroundColor(.blue)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
