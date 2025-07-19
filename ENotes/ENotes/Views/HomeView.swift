//
//  HomeView.swift
//  ENotes
//
//  Created by iredefbmac_27 on 15/07/25.
//
import SwiftUI



struct HomeView: View {
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    HStack(spacing: 200) {
                        Button {
                            navigationPath.append(Routes.newActivity)
                        } label: {
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                        }
                        
                        Button {
                            navigationPath.append(Routes.settings)
                        } label: {
                            Image(systemName: "gearshape.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 10)
                    
                    VStack {
                        Text("Relatório")
                            .bold()
                            .font(.title)
                        Spacer()
                    }
                    .padding()
                    .frame(width: 300, height: 550)
                    .background(Color.white) // Corrigido
                    .cornerRadius(10)
                    .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 10)
                    
                    HStack {
                        Button {
                            navigationPath.append(Routes.stats)
                        } label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Button {
                            navigationPath.append(Routes.home)
                        } label: {
                            Image(systemName: "house")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 30)
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Button {
                            navigationPath.append(Routes.tasks)
                        } label: {
                            Image(systemName: "checklist")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .background(Color.white) // Corrigido
                    .frame(width: 300)
                    .cornerRadius(10)
                    .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 10)
                }
            }
            .navigationDestination(for: Routes.self) { route in
                switch route {
                case .newActivity:
                    NewActivityView()
                case .settings:
                    EmptyView()
                case .stats:
                    EmptyView()
                case .tasks:
                    TasksView()
                case .home:
                    EmptyView()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
