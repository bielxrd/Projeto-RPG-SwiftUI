//
//  Personagens.swift
//  RPG Manager
//
//  Created by Student06 on 19/09/23.
//

import SwiftUI

struct Personagens: View {
    
    @StateObject var rpg = ViewModelRPG()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("BG")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.87)
                VStack{
                    Image("MeusPersonagens")
                        .resizable()
                        .frame(width: 350,height: 120)
                    Spacer()
                    
                    ScrollView{
                        
                        
                        ForEach(rpg.personagens,id: \._id){ personagem in
                            
                            ZStack{
                                Image("CharaBg")
                                    .resizable()
                                    .frame(width: 300,height: 120)
                                
                                HStack(spacing:12){
                                    NavigationLink{PersonagemView(perso:personagem)} label:{
                                        
                                        
                                        
                                        AsyncImage(url: URL(string:personagem.img!))  { image in
                                            image.resizable().frame(width:120,height: 120)
                                        } placeholder: {
                                            if(personagem.raca!.caseInsensitiveCompare("Humano") == .orderedSame || personagem.raca!.caseInsensitiveCompare("Human") == .orderedSame){
                                                Image("Humano").resizable().frame(width: 120,height: 120)
                                            }
                                            else if(personagem.raca!.caseInsensitiveCompare("Orc") == .orderedSame || personagem.raca!.caseInsensitiveCompare("Meio-orc") == .orderedSame || personagem.raca!.caseInsensitiveCompare("Half-Orc") == .orderedSame){
                                                Image("Orc").resizable().frame(width: 120,height: 120)
                                            }
                                            else if(personagem.raca!.caseInsensitiveCompare("Elfo") == .orderedSame || personagem.raca!.caseInsensitiveCompare("Meio-elfo") == .orderedSame || personagem.raca!.caseInsensitiveCompare("Half-elf") == .orderedSame){
                                                Image("Elfo").resizable().frame(width: 120,height: 120)
                                            }
                                            else if(personagem.raca!.caseInsensitiveCompare("Anão") == .orderedSame || personagem.raca!.caseInsensitiveCompare("Dwarf") == .orderedSame){
                                                Image("Orc").resizable().frame(width: 120,height: 120)
                                            }
                                            else if(personagem.raca!.caseInsensitiveCompare("Halfling") == .orderedSame){
                                                Image("Halfling").resizable().frame(width: 120,height: 120)
                                            }
                                            else if(personagem.raca!.caseInsensitiveCompare("Draconato") == .orderedSame || personagem.raca!.caseInsensitiveCompare("Dragonborn") == .orderedSame){
                                                Image("Dragonborn").resizable().frame(width: 120,height: 120)
                                            }
                                            else if(personagem.raca!.caseInsensitiveCompare("Tiefling") == .orderedSame){
                                                Image("Tiefling").resizable().frame(width: 120,height: 120)
                                            }
                                            else if(personagem.raca!.caseInsensitiveCompare("Gnomo") == .orderedSame || personagem.raca!.caseInsensitiveCompare("Gnome") == .orderedSame){
                                                Image("Gnome").resizable().frame(width: 120,height: 120)
                                            }
                                            else{
                                                Image(systemName: "person.crop.square.fill")
                                                    .resizable().frame(width: 120, height: 120)
                                                    .foregroundColor(.gray)
                                            }
                                        }.padding(.leading,-35)
                                        
                                        Text("\(personagem.nome!)")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.black)
                                    }//Fim Hstack
                                    .frame(width: 300,height: 120)
                                    
                                }//Fim Zstack
                                .cornerRadius(20)
                            }
                        }
                    }//Fim for each
                    //Fim scroll view
                }
                
                
            }//Fim ZStack
        }.onAppear(){rpg.fetch()}///Fim NavStack
    }//Fim body
}

struct Personagens_Previews: PreviewProvider {
    static var previews: some View {
        Personagens()
    }
}
