//
//  LoginView.swift
//  ENotes
//
//  Created by iredefbmac_27 on 15/07/25.
//

import SwiftUI

struct LoginView : View{
    //Variaveis de estado para fazer a validação do
    @StateObject private var viewModel = LoginViewController()
    var body : some View{
      
        NavigationStack{
            HStack {
                ZStack{
                    Color.lightBlue
                    
                        .ignoresSafeArea()
                    Circle()
                        .scale(1.6)
                        .foregroundColor(Color.white)
                    VStack(){
                        Text("Login")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        TextField("Email", text: $viewModel.email)
                            .autocapitalization(.none)
                            .padding()
                            .frame(width: 300,height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        SecureField("Senha", text: $viewModel.password)
                            .autocapitalization(.none)
                            .padding()
                            .frame(width: 300,height: 50 )
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        Button("Entrar"){
                            viewModel.login()
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: 300 , height: 50 )
                        .background(Color.lightBlue)
                        .cornerRadius(10)
                        .fullScreenCover(isPresented: $viewModel.logged) {
                            HomeView()
                        }
                        
                    }
                    
                    
                    
                }
                .navigationDestination(isPresented: $viewModel.isAuthenticated){ HomeView()}
            }
        }
    }
}

struct LoginView_previews:
    PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}
