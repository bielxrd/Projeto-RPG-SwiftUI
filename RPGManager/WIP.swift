//
//  WIP.swift
//  RPG Manager
//
//  Created by Student06 on 29/09/23.
//

import SwiftUI

struct WIP: View {
    var body: some View {
        
        ZStack{
            Image("BG").resizable().scaledToFill().ignoresSafeArea().opacity(0.87)
                Rectangle()
                .frame(width: 300,height: 500)
                .foregroundColor(.gray)
            VStack{
                Spacer()
                Image("WIP").resizable().frame(width: 250,height: 250)
                
                Text("Hey, esta página ainda não foi finalizada, mas estamos trabalhando duro nisso!")
                    .frame(width: 300,height: 300)
                    .font(.title)
                
                
            }
            
        }
    }
}

struct WIP_Previews: PreviewProvider {
    static var previews: some View {
        WIP()
    }
}
