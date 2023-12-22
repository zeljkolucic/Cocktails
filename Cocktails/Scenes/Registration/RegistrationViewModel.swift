//
//  RegistrationViewModel.swift
//  Cocktails
//
//  Created by Zeljko Lucic on 19.12.23..
//

import SwiftUI

final class RegistrationViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
}

