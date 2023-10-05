//
//  ViewModel.swift
//  RPGs
//
//  Created by Student06 on 13/09/23.
//

import Foundation

struct RPG: Codable, Hashable {
    
    let _id: String?
    let _rev:String?
    let nome : String?
    let jogador: String?
    let raca : String?
    let classe : String?
    let idade : String?
    let sistema: String?
    let desc: String?
    let img:String?
    let str:Int?
    let dex:Int?
    let const:Int?
    let int:Int?
    let wis:Int?
    let cha:Int?
    
}
struct API_RPG : Codable, Hashable {
    
    let manifest: String?
    let spells: String?
    let spelllist: String?
    let monsters: String?
    let documents: String?
    let backgrounds: String?
    let planes: String?
    let sections: String?
    let feats: String?
    let conditions: String?
    let races: String?
    let classes: String?
    let magicitems: String?
    let weapons: String?
    let armor: String?
    let search: String?
    
}
struct racesRPG: Codable,Hashable {
    
    let count : Int?
    let next : String?
    let previous : String?
    let results : [resultsRaces]?
    
}
struct resultsRaces : Codable,Hashable{
    let name: String?
    let slug: String?
    let desc: String?
    let asiDesc: String?
    let asi: [AbilityScoreIncrease]?
    let age: String?
    let alignment: String?
    let size: String?
    let speed: Speed?
    let speedDesc: String?
    let languages: String?
    let vision: String?
    let traits: String?
    let subraces: [Subrace]?
}
struct AbilityScoreIncrease : Codable,Hashable {
    let attributes: [String]
    let value: Int?
}

struct Speed : Codable,Hashable {
    let walk: Int?
}

struct Subrace : Codable,Hashable {
    let name: String?
    let slug: String?
    let desc: String?
    let asi: [AbilityScoreIncrease]?
    let asiDesc: String?
    let documentSlug: String?
    let documentTitle: String?
    let documentURL: String?
}


class ViewModelRPG : ObservableObject {
    @Published var personagens : [RPG] = []
    
    func fetch(){
        guard let url = URL(string: "http://192.168.128.254:1880/RPGData") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([RPG].self, from: data)
                
                DispatchQueue.main.async {
                    self?.personagens = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    func post(item: RPG){
       
        // Prepare URL
        let url = URL(string: "http://192.168.128.254:1880/RPGPost")
        guard let requestUrl = url else { fatalError() }
        
        // Prepare URL Request Object
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
    
        let jsonData = try? JSONEncoder().encode(item)
        request.httpBody = jsonData
        // Set HTTP Request Body
    
        
        print(jsonData!)
        
        // Perform HTTP Request
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if let error = error {
                print("Error took place \(error)")
                return
            }
            guard let data = data else {return}
            
            do{
//                let todoItemModel = try JSONDecoder().decode(ToDoResponseModel.self, from: data)
//                print("Response data:\n \(todoItemModel)")
//                print("todoItemModel Title: \(todoItemModel.title)")
//                print("todoItemModel id: \(todoItemModel.id ?? 0)")
            }catch let jsonErr{
                print(jsonErr)
            }
            
        }
        
        task.resume()
        
        
    }
    
}

class ViewModelRPGDND : ObservableObject {
        @Published var opc : [API_RPG] = []
       
       func fetch(){
           guard let url = URL(string: "https://api.open5e.com/v1/" ) else{
               return
           }
           
           let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
               guard let data = data, error == nil else{
                   return
               }
               
               do {
                   let parsed = try JSONDecoder().decode(API_RPG.self, from: data)
                   
                   DispatchQueue.main.async {
                       self?.opc.append(parsed)
                   }
               }catch{
                   print(error)
               }
           }
           
           task.resume()
       }
   }
class ViewModelRPGDNDRACES : ObservableObject {
        @Published var races : [resultsRaces] = []
       
       func fetchracas(){
           guard let url = URL(string: "https://api.open5e.com/v1/races/" ) else{
               return
           }
           
           let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
               guard let data = data, error == nil else{
                   return
               }
               
               do {
                   let parsed = try JSONDecoder().decode(resultsRaces.self, from: data)
                   
                   DispatchQueue.main.async {
                       self?.races.append(parsed)
                   }
               }catch{
                   print(error)
               }
           }
           
           task.resume()
       }
   }
