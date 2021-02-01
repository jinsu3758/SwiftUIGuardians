//
//  AlertView.swift
//  SystemViews
//
//  Created by 박진수 on 2021/02/01.
//

import SwiftUI

struct AlertView: View {
    @State private var result = ""
    @State private var showAlert = false
    
    
    var body: some View {
        VStack {
            Text(result)
                .font(.largeTitle)
            
            Button(action: {
                showAlert.toggle()
            }, label: {
                Text("Show Alert")
            })
            .padding()
            .alert(isPresented: $showAlert, content: {
//                Alert(title: Text("Alert"),
//                      message: Text("Message"),
//                      dismissButton: .default(Text("OK")))
                Alert(title: Text("Alert"),
                      message: Text("Message"),
                      primaryButton: .destructive(Text("Delete"), action: {
                        result = "Deleted"
                      }),
                      secondaryButton: .cancel({
                        result = "Canceled"
                      }))
                      
                      
            })
            
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
