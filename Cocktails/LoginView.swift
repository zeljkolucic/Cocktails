//
//  LoginView.swift
//  Cocktails
//
//  Created by Dunja Maksimovic on 12/5/23.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 12.0) {
            Image("login")
                .padding(.top)
                .padding(.bottom)
            
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
            .background {
                Color.white
            }
            .padding(.top)
            
            HStack {
                Divider()
                    .frame(width: 120, height: 1.0)
                    .background(.white)
                Text("or")
                    .foregroundStyle(.textSecondary)
                Divider()
                    .frame(width: 120, height: 1.0)
                    .background(.white)
            }
            
            Button {
                print("reg")
            } label: {
                HStack {
                    Image(systemName: "person.badge.plus")
                    Text("Register")
                }
            }
            .padding()
            .frame(height: 45)
            .tint(.white)
            .background {
                Color.backgroundTertiaryLight.opacity(0.3)
            }
            
            Spacer()
            
            Image("drink1")
                .padding(.bottom)
        }
        .padding(20)
        .background {
            LinearGradient(colors: [.backgroundTertiaryLight, .backgroundTertiaryDark,  .backgroundTertiaryDark], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LoginView()
}
