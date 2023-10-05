//
//  Home.swift
//  RPG Manager
//
//  Created by Student06 on 19/09/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("BG")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.87)
                
                VStack{
                    
                    Image("Logo").resizable()
                        .frame(width: 300,height: 120)
                    Spacer()
                    //Scrollview
                    ZStack{
                        Image("BgMenu2").resizable().frame(width: 250,height: 100).cornerRadius(20)
                        
                        NavigationLink("Introdução"){Introducao()}
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                        
                    }
                    
                    ZStack{
                        Image("BgMenu2").resizable().frame(width: 250,height: 100).cornerRadius(20)
                        
                        NavigationLink("Livros"){Books()}
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                        
                    }
                    ZStack{
                        Image("BgMenu2").resizable().frame(width: 250,height: 100).cornerRadius(20)
                        
                        NavigationLink("Personagens"){MidView()}
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 250,height: 100)
                        
                    }
                    Spacer()
                    
                    
                }//Fim Vstack
                
                
            }//Fim Zstack
            
            
            
            
        }//Fim navigation Stack
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
