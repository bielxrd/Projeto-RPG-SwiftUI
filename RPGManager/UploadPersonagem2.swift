//
//  UploadPersonagem2.swift
//  RPG Manager
//
//  Created by Student06 on 22/09/23.
//

import SwiftUI
func teste(valor:String) -> String{
    if(valor == "1" || valor == "2"){
       return("-4")
   }
   else if(valor == "3" ||  valor == "4"){
       return("-3")
   }
    if(valor == "5" || valor == "6"){
       return("-2")
   }
   else if(valor == "7" ||  valor == "8"){
       return("-1")
   }
    if(valor == "9" || valor == "10" || valor == "11"){
       return("0")
   }
   else if(valor == "12" ||  valor == "13"){
       return("+1")
   }
    if(valor == "14" || valor == "15"){
       return("+2")
   }
   else if(valor == "16" ||  valor == "17"){
       return("+3")
   }
    else if(valor == "18" ||  valor == "19"){
        return("+4")
    }
    else if(valor == "20" ||  valor == "21"){
        return("+5")
    }
    else if(valor == "22" ||  valor == "23"){
        return("+6")
    }
    else if(valor == "24"){
        return("+7")
    }
    else{
        return "0"
    }
}
struct UploadPersonagem2: View {
    @State var nome:String
    @State var raca:String
    @State var classe:String
    @State var idade:String
    @State var player:String
    @State var url:String
    @State var desc:String
    @State var sistem:String = ""
    @State var str:String = "0"
    @State var dex:String = "0"
    @State var const:String = "0"
    @State var int:String = "0"
    @State var wis:String = "0"
    @State var cha:String = "0"
    var body: some View {
        
        ZStack{
            Image("BG")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.87)
            ScrollView{
                VStack(spacing: 15){
                    Image("Novo")
                        .resizable()
                        .frame(width: 270,height: 80)
                    //   Spacer()
                    
                    ZStack{
                        Image("bground")
                            .resizable()
                            .frame(width: 340,height: 420)
                            .cornerRadius(10)
                            .padding(.leading,-5)
                        VStack(spacing: 5){
                            HStack{
                                Text("Sistema:").foregroundColor(.black)
                                
                                TextField("Insira aqui",text:$sistem)
                                    .foregroundColor(Color.black)
                                
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
                                                Text("\(teste(valor:str))").foregroundColor(.black)
                                                TextField("0",text:$str)
                                                    .keyboardType(.numberPad)
                                                    .foregroundColor(.black)
                                                    .frame(width: 100,height: 50)
                                                    .multilineTextAlignment(.center)
                                                    .scrollContentBackground(.hidden)
                                                    .opacity(01.0)
                                                    .font(.largeTitle)
                                                    .fontWeight(.bold)
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(Color.black)
                                                
                                                
                                            }.padding(.top,-23)
                                        }
                                    }
                                    Spacer()
                                    VStack(spacing: 2){
                                        Text("Destreza").foregroundColor(.black)
                                        ZStack{
                                            Image("CharSquare").resizable().frame(width: 110,height: 110)
                                            VStack{
                                                Text("\(teste(valor:dex))").foregroundColor(.black)
                                                TextField("0",text:$dex)
                                                    .keyboardType(.numberPad)
                                                    .foregroundColor(.black)
                                                    .frame(width: 100,height: 50)
                                                    .multilineTextAlignment(.center)
                                                    .scrollContentBackground(.hidden)
                                                    .opacity(01.0)
                                                    .font(.largeTitle)
                                                    .fontWeight(.bold)
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(Color.black)
                                                
                                            }.padding(.top,-23)
                                        }
                                        
                                    }
                                }
                                HStack{
                                    VStack(spacing: 2){
                                        Text("Constituição").foregroundColor(.black)
                                        ZStack{
                                            Image("CharSquare").resizable().frame(width: 110,height: 110)
                                            VStack{
                                                Text("\(teste(valor:const))").foregroundColor(.black)
                                                TextField("0",text:$const)
                                                    .keyboardType(.numberPad)
                                                    .foregroundColor(.black)
                                                    .frame(width: 100,height: 50)
                                                    .multilineTextAlignment(.center)
                                                    .scrollContentBackground(.hidden)
                                                    .opacity(01.0)
                                                    .font(.largeTitle)
                                                    .fontWeight(.bold)
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(Color.black)
                                                
                                            }.padding(.top,-23)
                                        }
                                    }
                                    Spacer()
                                    VStack(spacing: 2){
                                        Text("Inteligência").foregroundColor(.black)
                                        ZStack{
                                            Image("CharSquare").resizable().frame(width: 110,height: 110)
                                            VStack{
                                                Text("\(teste(valor:int))").foregroundColor(.black)
                                                
                                                TextField("0",text:$int)
                                                    .keyboardType(.numberPad)
                                                    .foregroundColor(.black)
                                                    .frame(width: 100,height: 50)
                                                    .multilineTextAlignment(.center)
                                                    .scrollContentBackground(.hidden)
                                                    .opacity(01.0)
                                                    .font(.largeTitle)
                                                    .fontWeight(.bold)
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(Color.black)
                                                
                                            }.padding(.top,-23)
                                        }
                                    }
                                }
                                HStack{
                                    VStack(spacing: 2){
                                        Text("Sabedoria").foregroundColor(.black)
                                        ZStack{
                                            Image("CharSquare").resizable().frame(width: 110,height: 110)
                                            VStack{
                                                Text("\(teste(valor:wis))").foregroundColor(.black)
                                                TextField("0",text:$wis)
                                                    .keyboardType(.numberPad)
                                                    .foregroundColor(.black)
                                                    .frame(width: 100,height: 50)
                                                    .multilineTextAlignment(.center)
                                                    .scrollContentBackground(.hidden)
                                                    .opacity(01.0)
                                                    .font(.largeTitle)
                                                    .fontWeight(.bold)
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(Color.black)
                                                
                                            }.padding(.top,-23)
                                        }
                                    }
                                    Spacer()
                                    VStack(spacing: 2){
                                        Text("Carisma").foregroundColor(.black)
                                        ZStack{
                                            Image("CharSquare").resizable().frame(width: 110,height: 110)
                                            VStack{
                                                Text("\(teste(valor:cha))").foregroundColor(.black)
                                                TextField("0",text:$cha)
                                                    .keyboardType(.numberPad)
                                                    .foregroundColor(.black)
                                                    .frame(width: 100,height: 50)
                                                    .multilineTextAlignment(.center)
                                                    .scrollContentBackground(.hidden)
                                                    .opacity(01.0)
                                                    .font(.largeTitle)
                                                    .fontWeight(.bold)
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(Color.black)
                                                
                                            }.padding(.top,-23)
                                        }
                                    }
                                }
                            }.padding(.top,-19)
                                .padding(.bottom,10)// Vstack
                        }//Vstack
                        .frame(width: 330,height: 420)
                        .padding(.top,-10)
                    }//Fim 2 Zstack
                    
                    NavigationLink{
                        UploadPersonagem3(x: RPG(_id: nil, _rev: nil, nome: nome, jogador: player, raca: raca, classe: classe, idade: idade, sistema: sistem, desc: desc, img: url, str: Int(str) ?? 0 , dex: Int(dex) ?? 0, const: Int(const) ?? 0, int: Int(int) ?? 0, wis: Int(wis) ?? 0, cha: Int(cha) ?? 0))
                    } label:{
                        ZStack{
                            Rectangle()
                                .frame(width: 200,height: 60)
                                .foregroundColor(.cyan)
                                .cornerRadius(40)
                            Text("Upload")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    Spacer()
                }//Fim VStack
            }
        }//FIM ZSTACK
    }
}

struct UploadPersonagem2_Previews: PreviewProvider {
    static var previews: some View {
        UploadPersonagem2(nome: "", raca: "", classe: "", idade: "", player: "", url: "", desc: "")
    }
}
