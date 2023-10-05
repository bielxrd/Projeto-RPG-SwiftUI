//
//  MidView.swift
//  RPG Manager
//
//  Created by Student06 on 22/09/23.
//

import SwiftUI

struct MidView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("BG")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.87)
                VStack(spacing: 30){
                    Image("Logo").resizable()
                        .frame(width: 300,height: 120)
                    Spacer()
                    ZStack{
                        Image("BgMenu2").resizable().frame(width: 300,height: 130)
                            .cornerRadius(40)
                        
                        NavigationLink{UploadPersonagem()} label: {
                            Text("Novo")
                            .frame(width: 300,height: 130).cornerRadius(40)
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center).tint(.black)
                        }//fim label
                        
                    }//Fim Zstack botao 1
                  
                    ZStack{
                        Image("BgMenu2").resizable().frame(width: 300,height: 140).cornerRadius(40)
                    NavigationLink{Personagens()} label: {
                            Text("Meus personagens")
                            .frame(width: 300,height: 140)
                            .cornerRadius(40)
                            .font(.system(size: 44))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .tint(.black)
                        }
                        
                        
                    }//Fim ZStack botao 2
                    
                   Spacer()
                }
                
                
                
            }//Fim ZStack
            
        }//Fim NS
        
        
    }
}

struct MidView_Previews: PreviewProvider {
    static var previews: some View {
        MidView()
    }
}
