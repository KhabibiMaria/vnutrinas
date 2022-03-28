//
//  LoginViewModel.swift
//  VnutriNas
//
//  Created by Даня on 27.03.2022.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var showError: Bool = false
    @Published var errorMessage: String = ""
    @Published var rePass: String = ""
    @Published var isLoad = false
    @AppStorage("isAuth") var isAuth: Bool = false
    
    func checkAuth() {
        isLoad = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.isLoad = false
            if self.email.isEmpty || self.password.isEmpty {
                self.showError = true
                self.errorMessage = "Заполните все поля"
            } else {
                if self.validateEmail() {
                    if (self.email == "maria.tea@mail.ru" && self.password == "maria") || (self.email == "test@mail.ru" && self.password == "test") {
                        withAnimation {
                            self.isAuth = true
                        }
                    } else {
                        self.showError = true
                        self.errorMessage = "Неверная почта или пароль"
                    }
                } else {
                    self.showError = true
                    self.errorMessage = "Неверный формат Email"
                }
            }
        }
    }
    
    func checkSignUp() {
        if email.isEmpty || password.isEmpty || rePass.isEmpty {
            showError = true
            errorMessage = "Заполните все поля"
        } else {
            if password == rePass {
            if validateEmail() {
                checkAuth()
            } else {
                showError = true
                errorMessage = "Неверный формат Email"
            }
            } else {
                showError = true
                errorMessage = "Пароли должны совпадать"
            }
        }
    }
    
    func validateEmail()-> Bool {
        let validate = "[a-z1-9.]+@[a-z1-9]+.[a-z]{1,3}"
        let isValidate = NSPredicate(format: "SELF MATCHES %@", validate)
        let validateEmail = isValidate.evaluate(with: email)
        return validateEmail
    }
}
