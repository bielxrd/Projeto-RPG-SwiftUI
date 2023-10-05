//
//  PersonagemView.swift
//  RPG Manager
//
//  Created by Student06 on 26/09/23.
//

import SwiftUI

struct PersonagemView: View {
    var perso: RPG
    var body: some View {
        
        ZStack{
            Image("BG").resizable().scaledToFill().ignoresSafeArea()
            
            VStack{
                Spacer()
                AsyncImage(url: URL(string:perso.img!))  { image in
                    image.resizable()
                        .frame(width:160,height: 160)
                } placeholder: {
                    Image(systemName: "person.crop.square.fill")
                        .resizable().frame(width: 160, height: 160)
                        .foregroundColor(.gray)
                }
                ZStack{
                    
                    Image("BgMenu2").resizable().frame(width: 400,height: 385)
                    VStack{
                        
                        HStack{
                            
                            VStack{
                                
                                HStack{
                                    Text("Nome:\(perso.nome!) ")
                                        .foregroundColor(.black)
                                }.frame(width: 150,height: 15)
                                    .padding(.leading, 30.0)
                                
                                Divider().overlay(.black)
                                    .frame(width: 360,height:2)
                                    .padding(.trailing, -220.0)
                                    
                                
                                HStack{
                                    Text("Raça:\(perso.raca!) ")
                                        .foregroundColor(.black)
                                }.frame(width: 150,height: 15)
                                    .padding(.leading, 30.0)
                                
                                Divider().overlay(.black).frame(width: 360,height:2)
                                    .padding(.trailing, -220.0)
                                    
                                HStack{
                                    
                                    Text("Classe:\(perso.classe!) ")
                                        .foregroundColor(.black)
                                }.frame(width: 150,height: 15)
                                    .padding(.leading, 30.0)
                            }
                            
                            Divider()
                                .overlay(.black)
                                .frame(width: 2,height:116)
                                .padding(.bottom, -22.5)
                            
                            VStack{
                                HStack{
                                    Text("URL:\(perso.img!) ")
                                        .foregroundColor(.black)

                                }.frame(width: 180,height: 15)
                                    .padding(.leading,-40)
                                    

                              Divider()
                                    
                                
                                HStack{
                                    Text("Idade:\(perso.idade!) ")
                                        .padding(.leading,-5)
                                        .foregroundColor(.black)
                                    
                                }.frame(width: 180,height: 15)
                                    .padding(.leading,-40)
                                    .foregroundColor(.black)
                               Divider()
                                
                                HStack{
                                    Text("Player:\(perso.jogador!)")
                                   
                                }.frame(width: 180,height: 15)
                                    .padding(.leading,-30)
                                    .foregroundColor(.black)
                                
                            }
                            
                        }.frame(width: 400,height: 120)
                        //Fim Hstack
                        
                        
                        Divider().overlay(.black)
                            .frame(width: 360,height:2)
                        
                        
                        Text("Descrição:")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.top,-5)
                            .frame(width: 300,height: 25)
                            .foregroundColor(.black)
                        
                        ScrollView{
                            Text("\(perso.desc!)")
                                .foregroundColor(.black)
                                .frame(width:340)
                                .padding(.bottom,20)
                                
                        }
                        }
                        
                        Spacer()
                    }//Fim ZStack
                NavigationLink{PersonagemView2(perso:perso)} label:{
                    ZStack{
                        Rectangle()
                            .frame(width: 200,height: 45)
                            .foregroundColor(.cyan)
                            .cornerRadius(40)
                        Text("Atributos")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            
                    }
                    
                }
                Spacer()
                    
                }//Fim VStack
                
                
                
                
                
            }
            
            
            
            
        }
        
        
        
    }


struct PersonagemView_Previews: PreviewProvider {
    static var previews: some View {
        PersonagemView(perso: RPG(_id: "",_rev:"",nome: "",jogador: "PENIS",raca : "", classe :"",idade : "",sistema: "",desc:"Albion Online é um MMORPG sandbox em que você escreve sua própria história, em vez de seguir um caminho pré-determinado. Explore um vasto mundo aberto que consiste de 5 ecossistemas únicos. Tudo o que você faz gera um impacto no mundo, já que em Albion, a economia é conduzida pelo jogador. Cada peça de equipamento é construída por jogadores a partir dos recursos obtidos por eles. O equipamento que você usa define quem você é. Ir de cavaleiro para feiticeiro é tão fácil quanto trocar a armadura e a arma, ou uma combinação das duas. Aventure-se no mundo aberto e enfrente os habitantes e as criaturas de Albion. Saia em expedições ou entre em masmorras para enfrentar inimigos ainda mais desafiadores. Enfrente outros jogadores em confrontos do mundo aberto, lute pelo controle de territórios ou cidades inteiras em batalhas táticas em grupo. Relaxe descansando em sua ilha pessoal, onde você pode construir uma casa, cultivar alimentos e criar animais. Junte-se à uma guilda, tudo fica mais divertido quando se trabalha em equipe. Entre hoje mesmo no mundo de Albion, e escreva sua própria história.",img:"https://i.imgur.com/DU5GneG.jpg",str:18,dex:16,const:10,int:10,wis:18,cha:18))
    }
}
