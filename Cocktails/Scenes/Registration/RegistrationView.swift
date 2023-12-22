//
//  RegistrationView.swift
//  Cocktails
//
//  Created by Zeljko Lucic on 19.12.23..
//

import SwiftUI

struct RegistrationView: View {
    @ObservedObject private var viewModel: RegistrationViewModel
    
    init(viewModel: RegistrationViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK: - Views
    
    var body: some View {
        VStack {
            form
            Spacer()
            Image("Drink2")
        }
        .padding()
        .background {
            LinearGradient(
                colors: [.backgroundSecondaryLight,  .backgroundSecondaryDark],
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
        }
        .font(.custom("Caveat Regular", size: 16, relativeTo: .body))
    }
    
    private var form: some View {
        VStack(spacing: Constants.Form.spacing) {
            Image("RegiStar")
            textFields
            register
            or
            login
        }
        .foregroundStyle(.white)
    }
    
    private var register: some View {
        Button("Register", systemImage: "person.badge.plus") {
            // TODO: - Implement `Registration` button action
        }
        .padding()
        .background(.white)
        .foregroundStyle(.black)
    }
    
    private var or: some View {
        HStack(spacing: Constants.Divider.padding) {
            divider
            Text("or")
            divider
        }
    }
    
    private var login: some View {
        Button("Login", systemImage: "person") {
            // TODO: - Implement `Login` button action
        }
        .padding()
        .background(.white.opacity(Constants.Button.opacity))
    }
    
    private var divider: some View {
        Divider().frame(minWidth: Constants.Divider.width, maxHeight: Constants.Divider.height)
            .background(.white)
    }
    
    private var textFields: some View {
        VStack(spacing: Constants.TextField.padding) {
            Rectangle()
                .frame(height: Constants.TextField.height)
                .overlay {
                    TextField("name", text: $viewModel.name)
                        .padding(.horizontal)
                        .foregroundStyle(.textPrimary)
                }
            Rectangle()
                .frame(height: Constants.TextField.height)
                .overlay {
                    TextField("email", text: $viewModel.email)
                        .padding(.horizontal)
                        .foregroundStyle(.textPrimary)
                }
            Rectangle()
                .frame(height: Constants.TextField.height)
                .overlay {
                    TextField("password", text: $viewModel.password)
                        .padding(.horizontal)
                        .foregroundStyle(.textPrimary)
                }
        }
        .multilineTextAlignment(.center)
    }
    
    // MARK: - Constants
    
    private struct Constants {
        struct Form {
            static let spacing: CGFloat = 20
        }
        struct Divider {
            static let padding: CGFloat = 25
            static let width: CGFloat = 120
            static let height: CGFloat = 1
        }
        struct TextField {
            static let padding: CGFloat = 10
            static let height: CGFloat = 40
        }
        struct Button {
            static let opacity: CGFloat = 0.1
        }
    }
}

#Preview {
    RegistrationView(viewModel: RegistrationViewModel())
}
