//
//  PersonagemView2.swift
//  RPG Manager
//
//  Created by Student06 on 26/09/23.
//

import SwiftUI

struct PersonagemView2: View {
    var perso:RPG
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.87)
            VStack(spacing: 15){
                
                AsyncImage(url: URL(string:perso.img!))  { image in
                    image.resizable()
                        .frame(width:160,height: 160)
                } placeholder: {
                    Image(systemName: "person.crop.square.fill")
                        .resizable().frame(width: 160, height: 160)
                        .foregroundColor(.gray)
                }
            
             //   Spacer()
                
                ZStack{
                    Image("bground")
                        .resizable()
                        .frame(width: 340,height: 420)
                        .cornerRadius(10)
                        .padding(.leading,-5)
                    VStack(spacing: 5){
                        HStack{
                            Text("Sistema:\(perso.sistema!)")
                                .foregroundColor(.black)
                    
                            
                        }//hstack
                        .padding()
                        
                        Divider()
                        .overlay(.black)
                        .frame(width: 340,height: 2)
                        .padding(.top,-15)
                        .padding(.leading,-5)
                        
                        
                        VStack(spacing:-2){
                            HStack{
                                VStack(spacing: 2){
                                    Text("Força").foregroundColor(.black)
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            Text("\(perso.str!)")
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                            
                                        }
                                    }
                                }
                                Spacer()
                                VStack(spacing: 2){
                                    Text("Destreza").foregroundColor(.black)
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            Text("\(perso.dex!)")
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                            
                                        }
                                    }
                                    
                                }
                            }
                            HStack{
                                VStack(spacing: 2){
                                    Text("Constituição").foregroundColor(.black)
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            Text("\(perso.const!)")
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                            
                                        }
                                    }
                                }
                                Spacer()
                                VStack(spacing: 2){
                                    Text("Inteligência").foregroundColor(.black)
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            Text("\(perso.int!)")
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                            
                                        }
                                    }
                                }
                            }
                            HStack{
                                VStack(spacing: 2){
                                    Text("Sabedoria").foregroundColor(.black)
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            Text("\(perso.wis!)")
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                            
                                        }
                                    }
                                }
                                Spacer()
                                VStack(spacing: 2){
                                    Text("Carisma").foregroundColor(.black)
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            Text("\(perso.cha!)")
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                            
                                        }
                                    }
                                }
                            }
                        }.padding(.top,-19)
                         .padding(.bottom,10)// Vstack
                    }//Vstack
                    .frame(width: 330,height: 420)
                    .padding(.top,-10)
                }//Fim 2 Zstack
                
            }//Fim VStack
        }
        
        
    }
}

struct PersonagemView2_Previews: PreviewProvider {
    static var previews: some View {
        PersonagemView2(perso: RPG(_id: "",_rev:"",nome: "",jogador: "PENIS",raca : "", classe :"",idade : "",sistema: "",desc:"Albion Online é um MMORPG sandbox em que você escreve sua própria história, em vez de seguir um caminho pré-determinado. Explore um vasto mundo aberto que consiste de 5 ecossistemas únicos. Tudo o que você faz gera um impacto no mundo, já que em Albion, a economia é conduzida pelo jogador. Cada peça de equipamento é construída por jogadores a partir dos recursos obtidos por eles. O equipamento que você usa define quem você é. Ir de cavaleiro para feiticeiro é tão fácil quanto trocar a armadura e a arma, ou uma combinação das duas. Aventure-se no mundo aberto e enfrente os habitantes e as criaturas de Albion. Saia em expedições ou entre em masmorras para enfrentar inimigos ainda mais desafiadores. Enfrente outros jogadores em confrontos do mundo aberto, lute pelo controle de territórios ou cidades inteiras em batalhas táticas em grupo. Relaxe descansando em sua ilha pessoal, onde você pode construir uma casa, cultivar alimentos e criar animais. Junte-se à uma guilda, tudo fica mais divertido quando se trabalha em equipe. Entre hoje mesmo no mundo de Albion, e escreva sua própria história.",img:"https://i.imgur.com/DU5GneG.jpg",str:18,dex:16,const:10,int:10,wis:18,cha:18))
    }
}
