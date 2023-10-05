//
//  Upload.swift
//  RPG Manager
//
//  Created by Student06 on 25/09/23.
//

import SwiftUI


   

var body: some View {
        ZStack{
            Image("BG").resizable().scaledToFill().ignoresSafeArea()
                
            
            
             
            
            
            
            
        }
        
        
    }//Body
}

struct Upload_Previews: PreviewProvider {
    static var previews: some View {
        Upload(nome: "", raca: "", classe: "", idade: "", player: "", url: "", desc: "", sistem: "", str: "", dex: "0", const: "0", int: "0", wis: "0", cha: "0")
    }
}
