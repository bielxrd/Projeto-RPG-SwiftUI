//
//  Regras.swift
//  RPG Manager
//
//  Created by Student04 on 26/09/23.
//

import SwiftUI

struct Regras: View {
    var body: some View {
        ZStack {
            Image("BG")
            
            VStack{
            
           
                Image("RegrasImg").resizable()
                    
                    .frame(width: 300, height: 100)
                
                ZStack {
                    Image("bground").resizable().frame(width: 400.0, height: 380.0).padding(.top,-50)
                    VStack{
        
                        Text("1. O DM descreve o ambiente")
                            .fontWeight(.semibold)
                            .padding(.horizontal, 15.0)
                        Text("o DM descreve o cenário e a situação dos jogadores.")
                            .multilineTextAlignment(.center)
                            .padding(.leading, 20.0)
                        Text("\n2.Os jogadores descrevem as ações.").fontWeight(.semibold).padding(.horizontal, 15.0).multilineTextAlignment(.center)
                        Text("Os jogadores vão decidir as ações que desejam vencer.").multilineTextAlignment(.center).padding(.leading, 20.0)
                        Text("\n3. O DM narra os resultados das ações dos jogadores").multilineTextAlignment(.center).fontWeight(.semibold).padding(.horizontal, 15.0)
                        Text("O DM vai descrever os resultados das ações resultando em uma história de sua escolha.").multilineTextAlignment(.center).padding(.leading, 20.0)
                        
                        
                        
                        Spacer()
                    }.frame(width: 400, height: 400)
                }
                NavigationLink {DadosDeJogo()} label:{
                    ZStack {
                        Rectangle().frame(width:200.0, height: 70).foregroundColor(.orange).cornerRadius(40)
                        
                        Text("Conheça o Dado").font(.title).fontWeight(.bold)
                            .foregroundColor(Color.black).frame(width: 200.0, height: 70)
                            
                    }
            
                }
            }
            
            
            
        }
        
        
    }
}

struct Regras_Previews: PreviewProvider {
    static var previews: some View {
        Regras()
    }
}
