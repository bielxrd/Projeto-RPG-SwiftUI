//
//  DadosDeJogo.swift
//  RPG Manager
//
//  Created by Student04 on 26/09/23.
//

import SwiftUI

struct DadosDeJogo: View {
    var body: some View {
        ZStack {
            Image("BG")
            
            VStack{
            
           
                Image("ImgDados").resizable()
                    
                    .frame(width: 300, height: 100)
                
                ZStack {
                    Image("bground").resizable().frame(width: 400.0, height: 380.0).padding(.top,-50)
                    VStack{
        
                        Text("1. Jogue o dado.")
                            .fontWeight(.semibold)
                            .padding(.horizontal, 15.0)
                        Text("Jogue o dado d20 e guarde o valor sorteado.")
                            .multilineTextAlignment(.center)
                            .padding(.leading, 20.0)
                        Text("\n2. Aplique bônus  e penalidades.").fontWeight(.semibold).padding(.horizontal, 15.0).multilineTextAlignment(.center)
                        Text("Some o bônus do personagem que realizou a ação ao número que saiu no dado.").multilineTextAlignment(.center).padding(.leading, 20.0)
                        Text("\n3. Compare o total au um número-alvo.").multilineTextAlignment(.center).fontWeight(.semibold).padding(.horizontal, 15.0)
                        Text("Compare o valor tirado pelo personagem com o número-alvo. Se igualar ou suceder, ação realizada com sucesso. Se não, a ação falhou.").multilineTextAlignment(.center).padding(.leading, 20.0)
                        
                        
                        
                        Spacer()
                    }.frame(width: 400, height: 400)
                }
                
            }
            
            
            
        }
    }
}

struct DadosDeJogo_Previews: PreviewProvider {
    static var previews: some View {
        DadosDeJogo()
    }
}
