//
//  LoginView.swift
//  Cocktails
//
//  Created by Dunja Maksimovic on 12/5/23.
//

import SwiftUI

struct LoginView: View {

    var body: some View {
        VStack {
            LoginForm()
            
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
            .padding(.horizontal)
            
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
            .background(.backgroundTertiaryLight.opacity(0.3))
            
            Spacer()
            
            Image("drink1")
        }
        .padding(20)
        .padding(.bottom)
        .background {
            LinearGradient(colors: [.backgroundTertiaryLight, .backgroundTertiaryDark,  .backgroundTertiaryDark], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LoginView()
}
