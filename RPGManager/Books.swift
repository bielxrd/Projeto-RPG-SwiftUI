//
//  Books.swift
//  RPG Manager
//
//  Created by Student06 on 19/09/23.
//

import SwiftUI

struct Books: View {
    @StateObject var livros = ViewModelRPGDND()
    @StateObject var race = ViewModelRPGDNDRACES()
    var body: some View {
        NavigationStack{
            ZStack{
                Image("BG").resizable().scaledToFill().ignoresSafeArea().opacity(0.87)
                ScrollView{
                    ForEach(livros.opc,id: \.self){ livro in
                        
                        NavigationLink{WIP()} label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 250,height: 70)
                                    .foregroundColor(.orange)
                                    .cornerRadius(40)
                                Text("Races")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }//Fim label
                        NavigationLink{WIP()} label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 250,height: 70)
                                    .foregroundColor(.orange)
                                    .cornerRadius(40)
                                Text("Classes")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }//Fim label
                    
                    
                        NavigationLink{WIP()} label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 250,height: 70)
                                    .foregroundColor(.orange)
                                    .cornerRadius(40)
                                Text("Spells")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }//Fim label
                        
                        NavigationLink{WIP()} label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 250,height: 70)
                                    .foregroundColor(.cyan)
                                    .cornerRadius(40)
                                Text("Backgrounds")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }//Fim label
                    
                        NavigationLink{WIP()} label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 250,height: 70)
                                    .foregroundColor(.cyan)
                                    .cornerRadius(40)
                                Text("Sections")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }//Fim label
                        NavigationLink{WIP()} label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 250,height: 70)
                                    .foregroundColor(.cyan)
                                    .cornerRadius(40)
                                Text("Feats")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }//Fim label
                        NavigationLink{WIP()} label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 250,height: 70)
                                    .foregroundColor(.red)
                                    .cornerRadius(40)
                                Text("Conditions")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }//Fim label
                    
                        NavigationLink{WIP()} label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 250,height: 70)
                                    .foregroundColor(.red)
                                    .cornerRadius(40)
                                Text("Items")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }//Fim label
                        NavigationLink{WIP()} label:{
                            ZStack{
                                Rectangle()
                                    .frame(width: 250,height: 70)
                                    .foregroundColor(.red)
                                    .cornerRadius(40)
                                Text("Monsters")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            
                        }//Fim label
                        
                        
                    
                        
                    }//Fim foreach
                }//Fim Scrollview
                
                
                
                
            }//FIM ZStack
            
        }//Fim NVS
        .onAppear(){livros.fetch()}
        
    }
}

struct Books_Previews: PreviewProvider {
    static var previews: some View {
        Books()
    }
}
