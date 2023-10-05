//
//  Introducao.swift
//  RPG Manager
//
//  Created by Student06 on 19/09/23.
//

import SwiftUI

struct Introducao: View {
    var body: some View {
        ZStack {
            Image("BG")
            
            VStack{
            
           
                Image("IntroImg").resizable()
                    
                    .frame(width: 300, height: 100)
                
                ZStack {
                    Image("bground").resizable().frame(width: 400.0, height: 380.0).padding(.top,-50)
                    VStack{
        
                        Text("Este é um aplicativo para pessoas que desejam conhecer mais sobre RPG, com foco em D&D. Aqui voce vai poder se aprofundar em detalhes sobre os livros disponíveis, sobre os personagens, sobre como funcionam as classes, as raças, as regras e também terá como opção criar o seu próprio personagem para se integrar mais ainda a esse universo.")
                            .fontWeight(.semibold)
                            .padding(.horizontal, 15.0)
                            .foregroundColor(.black)
                        
                        
                        Spacer()
                    }.frame(width: 400, height: 400)
                }
            }
            
            
            NavigationLink {Regras()
                } label:{
                ZStack {
                    Rectangle().frame(width:150.0, height: 70).foregroundColor(.orange).cornerRadius(40)
                    
                    Text("Regras").font(.title).fontWeight(.bold)
                        .foregroundColor(Color.black)
                        
                }
        
            }
                .padding(.top, 530.0).padding(.leading, -180)
            
            NavigationLink {Conteudo()
                } label:{
                ZStack {
                    Rectangle().frame(width:150.0, height: 70).foregroundColor(.orange).cornerRadius(40)
                    
                    Text("Conteudo").font(.title).fontWeight(.bold)
                        .foregroundColor(Color.black)
                        
                }
        
            }
                .padding(.top, 530.0).padding(.leading, 180)
            
            
        }
        
    }
}

struct Introducao_Previews: PreviewProvider {
    static var previews: some View {
        Introducao()
    }
}
