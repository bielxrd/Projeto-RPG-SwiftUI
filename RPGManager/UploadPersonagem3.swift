//
//  UploadPersonagem3.swift
//  RPG Manager
//
//  Created by Student06 on 27/09/23.
//

import SwiftUI

struct UploadPersonagem3: View {
    
    var x : RPG
    var vm = ViewModelRPG()
    
    var body: some View {
        VStack{
            ZStack{
                Image("BG").resizable().scaledToFill().ignoresSafeArea().opacity(0.9)
                
                ZStack{
                    Color(.white)
                        .frame(width: 330,height: 380)
                    VStack{
                        Image(systemName: "checkmark.square").resizable().frame(width: 240,height: 240).foregroundColor(.green)
                        Text("Upload realizado com sucesso")
                            .foregroundColor(Color.black)
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .frame(width: 300,height: 80)
                        
                        NavigationLink{Home()
                        } label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 200,height: 60)
                                    .foregroundColor(.cyan)
                                    .cornerRadius(40)
                                Text("Home")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }

                    }
                }
            }
        }.onAppear(){
            vm.post(item: x)
        }
        
    }
}
struct UploadPersonagem3_Previews: PreviewProvider {
    static var previews: some View {
        UploadPersonagem3(x:RPG(_id: nil, _rev: nil, nome: "", jogador: "", raca: "", classe: "", idade: "", sistema: "", desc: "", img: "", str: Int("10") ?? 0 , dex: Int("10") ?? 0, const: Int("10") ?? 0, int: Int("10") ?? 0, wis: Int("10") ?? 0, cha: Int("10") ?? 0))
    }
}


