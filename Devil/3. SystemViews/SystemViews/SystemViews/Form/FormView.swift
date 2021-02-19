//
//  FormView.swift
//  SystemViews
//
//  Created by jinsu on 2021/02/19.
//

import SwiftUI

struct FormView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var address = ""
    @State private var age = 0
    @State private var receiveEmail = false
    
    var body: some View {
       Form {
        Section {
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            TextField("Address", text: $address)
        }
        
        Section {
            Stepper("Age: \(age)", value: $age)
            Toggle(isOn: $receiveEmail, label: { Text("Receive Email") })
        }
          
       }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
