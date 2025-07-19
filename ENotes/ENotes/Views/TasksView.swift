//
//  TasksView.swift
//  ENotes
//
//  Created by iredefbmac_27 on 16/07/25.
//

import SwiftUI

struct TasksView: View {
    var body : some View {
        ZStack{
            Color.lightBlue
                .ignoresSafeArea()
                
            VStack(spacing:20){
                HStack(spacing:200){
                    Button{}
                    label: {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                    Button{}
                    label:{
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:40,height:40)
                            .foregroundColor(.black)
                    }
                
                        
                    
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 10)
                
                
                
                VStack{
                Text("Hoje")
                        .bold()
                        .font(.title)
                    Spacer()
                    Text("Amanhã")
                        .bold()
                        .font(.title)
                    Spacer()
                    Text("Próximos 7 dias")
                        .font(.title)
                        .bold()
                    Spacer()
                    Text("Atrasadas")
                        .bold()
                        .font(.title)
                    Spacer()
                }
                .padding()
                .frame(width:300,height:550)
                .cornerRadius(10)
                .background()
                .shadow(color:.gray.opacity(0.4),radius: 5,x:0,y:10)
                
                
                   
                    HStack(){
                        Button(action:{}){
                        Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width:30,height:30)
                                .foregroundStyle(.black)
                        }
                        Spacer()
                        
                        Button(action:{}){
                        
                            Image(systemName: "house")
                                .resizable()
                                .scaledToFit()
                                .frame(width:35,height:30)
                                .foregroundColor(.black)
                        }
                                    
                        Spacer()
                        Button(action:{}){
                        Image(systemName: "checklist")
                                .resizable()
                                .scaledToFit()
                                .frame(width:30,height:30)
                            .foregroundColor(.black)}
                    
                }
                    .padding()
                    .background()
                    .frame(width:300)
                    .cornerRadius(10)
                    .shadow(color:.gray.opacity(0.4),radius: 5,x:0,y:10)
            }
        }

    }
}


struct TasksView_previews:
    PreviewProvider{
    static var previews: some View{
        TasksView()
    }
}
