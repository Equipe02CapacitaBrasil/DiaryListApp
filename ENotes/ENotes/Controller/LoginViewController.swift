//
//  LoginViewController.swift
//  ENotes
//
//  Created by iredefbmac_27 on 15/07/25.
//

import Foundation
import Combine

class LoginViewController: ObservableObject{
    //Variaveis globais
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var logged : Bool = false
    @Published var isAuthenticated: Bool = false
    @Published var errorMessage : String?
    
    func login (){
        errorMessage = nil
        guard !email.isEmpty else {
            errorMessage = "Email não pode estar vázio."
            return
        }
        guard !password.isEmpty else {
            errorMessage = "Senha não pode estar vázia."
            return
        }
        
        
        if email == "teste@gmail.com" && password == "123" {
            logged = true
            isAuthenticated = true
        }else{
            errorMessage = "Login ou senha errados."
        }
    }
    
    
}
