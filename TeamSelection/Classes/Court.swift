//
//  Court.swift
//  TeamSelection
//
//  Created by liran ben haim on 15/05/2023.
//

import Foundation


class Court : ObservableObject {
    
    var  date : Date = Date.now
    @Published var amountOfP : Int = 0
    @Published var  amountOfTeams : Int = 0
    
    
    
    
    func setAmountOfP(amountOfpe:Int)-> Void{
        self.amountOfP = amountOfpe
    }
    
    func setAmountOfT(amountOfTe:Int)->Void{
        self.amountOfTeams = amountOfTe
    }
    
    
    func getAmountOfP()-> String {
        return "we have for the court \(self.amountOfP) players"
    }
    
    func getDate()->String{
        return "the date is \(self.date)"
        
    }
    func getAmountOfTeams()-> String{
        return "\(self.amountOfTeams)"
    }
}
