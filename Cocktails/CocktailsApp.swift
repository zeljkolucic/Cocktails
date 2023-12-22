//
//  CocktailsApp.swift
//  Cocktails
//
//  Created by Zeljko Lucic on 28.11.23..
//

import SwiftUI

@main
struct CocktailsApp: App {
    @StateObject private var registrationViewModel = RegistrationViewModel()
    
    var body: some Scene {
        WindowGroup {
            RegistrationView(viewModel: registrationViewModel)
        }
    }
}
