//
//  ContentView.swift
//  RPG Manager
//
//  Created by Student06 on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack{
                    HStack{
                        Text("AVISO")
                        
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Image(systemName: "exclamationmark.triangle.fill").resizable().foregroundColor(.yellow).frame(width: 40,height: 40)
                        
                        
                    }//Fim Hstack
                    Spacer()
                    Text("Isto é um protótipo e ainda não foi terminado, o projeto não tem fins lucrativos\nFeito de fã para fã .").foregroundColor(.white)
                        .font(.title)
                        .padding()
                    Spacer()
                    HStack{
                        NavigationLink(destination:{ Home().navigationBarBackButtonHidden(true) }, label:{
                            Text("Agree").tint(.white)
                                .padding(.horizontal, 5)
                                .frame(width: 150,height: 50)
                                .background(.blue)
                                .cornerRadius(20)
                        })
                        
                        Button(){
                            
                        } label:{
                            Text("Disagree" ).tint(.white)
                                .padding(.horizontal, 5)
                                .frame(width: 150,height: 50)
                                .background(.gray)
                                .cornerRadius(20)
                        }//Fim Button
                        
                    }//Fim HStack
                    
                    
                }
                .padding()
                
            }//ZStack
        }//Link
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
