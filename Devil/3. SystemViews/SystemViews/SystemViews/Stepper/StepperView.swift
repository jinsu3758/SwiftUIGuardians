//
//  Stepper.swift
//  SystemViews
//
//  Created by 박진수 on 2021/01/28.
//

import SwiftUI

struct StepperView: View {
    @State private var quantity = 0
    @State private var isEdited = false
    
    var body: some View {
        VStack {
            Text("\(quantity)")
                .font(.system(size: 150))
            
            // #1
            Stepper("Qty", value: $quantity,
                    in: 0...100,
                    //                    step: 1,
                    onEditingChanged: {
                        isEdited = $0
                    })
                .padding()
            
            
            Text("\(isEdited ? "true" : "false")")
            
            Stepper("Qty", onIncrement: {
                quantity += 1
            }, onDecrement: {
                quantity -= 1
            })
            .padding()
            .labelsHidden()
            
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
