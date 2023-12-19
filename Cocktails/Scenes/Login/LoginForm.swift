//
//  LoginForm.swift
//  Cocktails
//
//  Created by Dunja Maksimovic on 12/13/23.
//

import SwiftUI

struct LoginForm: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 12.0) {
            Image("login")
                .padding(.vertical)
            
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
            
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            
            Button {
                print("login")
            } label: {
                HStack {
                    Image(systemName: "person")
                    Text("Login")
                }
            }
            .padding()
            .frame(height: 45)
            .tint(.backgroundTertiaryDark)
            .background(.white)
            .padding(.top)
        }
    }
}

#Preview {
    LoginForm()
}
