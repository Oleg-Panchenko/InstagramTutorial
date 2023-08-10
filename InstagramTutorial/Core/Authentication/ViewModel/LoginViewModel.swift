//
//  LoginViewModel.swift
//  InstagramTutorial
//
//  Created by Panchenko Oleg on 10.08.2023.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    func signIn() async throws {
        try await AuthService.shared.login(with: email, password: password)
    }
}
